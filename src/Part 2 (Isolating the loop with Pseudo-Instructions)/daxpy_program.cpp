#include <cstdio>
#include <cstdlib>
#include <vector>
#include <random>
#include <chrono>
#include<gem5/m5ops.h>
int main(int argc, char** argv) {
    int N = 1'000'000;
    if (argc > 1) {
        N = std::atoi(argv[1]);
    }

    float a = 2.5f;

    std::vector<float> X(N), Y(N);

    std::mt19937 rng(12345);
    std::uniform_real_distribution<float> dist(0.0f, 1.0f);
    for (int i = 0; i < N; i++) {
        X[i] = dist(rng);
        Y[i] = dist(rng);
    }

    //Here, we end block A (initialization) and reset the stats so that block B (our DAXPY block) starts clean
    m5_dump_stats(0,0);
    m5_reset_stats(0,0);

    //Our DAXPY implementation
    for (int i = 0; i < N; i++) {
        Y[i] = a * X[i] + Y[i];
    }
    //Same thing, end block B and have clean stats for block C (finalization)
    m5_dump_stats(0,0);
    m5_reset_stats(0,0);


    double sum = 0.0;
    for (int i = 0; i < N; i++) {
        sum += Y[i];
    }
    std::printf("N=%d, a=%f, sum=%f\n", N, a, sum);
    return 0;
    
    //The reason we added these dump stats is because it allows us to collect stats before block A, between blocks A and B, and after block B

}