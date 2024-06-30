#include <iostream>
#include <vector>
#include <benchmark/benchmark.h>

using namespace std;

const int N = 4000;

using matrix = vector<vector<int>>;

void generateMatrices(matrix& A, matrix& B, matrix& C) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            A[i][j] = j;
            B[i][j] = (i * j) % 4000;
            C[i][j] = 3999 - j;
        }
    }
}

void someFunction(const matrix& A, const matrix& B, const matrix& C, matrix& D) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            D[i][j] = A[i][j] + B[i][j] + A[i][j] + C[i][j] - 2 * A[i][j];
        }
    }
}

static void BM_SomeFunction(benchmark::State& state) {
    matrix A(N, vector<int>(N));
    matrix B(N, vector<int>(N));
    matrix C(N, vector<int>(N));
    matrix D(N, vector<int>(N));

    generateMatrices(A, B, C);

    for (auto _ : state) {
        someFunction(A, B, C, D);
    }
}
BENCHMARK(BM_SomeFunction);

BENCHMARK_MAIN();

