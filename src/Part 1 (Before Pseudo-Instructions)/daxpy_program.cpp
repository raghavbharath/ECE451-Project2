#include <cstdio>
#include <cstdlib>
#include <vector>
#include <random>
#include <chrono>

int main(int argc, char** argv) {
    int N = 1'000'000;
    if (argc > 1) {
        N = std::atoi(argv[1]);
    }

    float a = 2.5f;

    std::vector<float> X(N), Y(N);

    std::mt19937 rng(12345);
    std::uniform_real_distribution<float> dist(0.0f, 1.0f);
    for (int i = 0; i < N; ++i) {
        X[i] = dist(rng);
        Y[i] = dist(rng);
    }

    //Our DAXPY implementation
    for (int i = 0; i < N; ++i) {
        Y[i] = a * X[i] + Y[i];
    }

    double sum = 0.0;
    for (int i = 0; i < N; ++i) {
        sum += Y[i];
    }
    std::printf("N=%d, a=%f, sum=%f\n", N, a, sum);
    return 0;
}