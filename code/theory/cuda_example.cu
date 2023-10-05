// This cuda kernel adds two vectors together and saves it into a third one 
__global__ void vectorAdd(const int* srcA, const int* srcB, const int vecSize, int* dst) {
    // Get the id of the current thread
    const int idx = blockIdx.x * blockDim.x + threadIdx.x;

    // Ignore all threads with an id larger or equal to vecSize to avoid running out of bound
    if (idx < vecSize) {
        // Add vectors srcA and arcB together and write it into the vector dst
        dst[idx] = srcA[idx] + srcB[idx];
    }
}
