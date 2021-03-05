float* create_aditive_recurrence_seq(int k) {
	float c = 0.618034; // golden ratio
	float* X = (float*)malloc(sizeof(float) * k);
	for (int i = 0; i < k; i++) {
		X[i] = rand() / (float)RAND_MAX * 10000.0f;
	}

	for (int i = 1; i < k; i++) {
		X[i] = fmodf((X[i - 1] + c),1);
	}

	return X;
}
