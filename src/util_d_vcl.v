module vtl

// assert_square_matrix panics if the given tensor is not a square matrix
[inline]
fn (t &VclTensor<T>) assert_square_matrix<T>() ? {
	if t.is_square_matrix() {
		return error('Matrix is not square')
	}
}

// assert_square_matrix panics if the given tensor is not a matrix
[inline]
fn (t &VclTensor<T>) assert_matrix<T>() ? {
	if t.is_matrix() {
		return error('Tensor is not two-dimensional')
	}
}

// assert_rank ensures that a Tensor has a given rank
[inline]
fn (t &VclTensor<T>) assert_rank<T>(n int) ? {
	if n != t.rank() {
		return error('Bad number of dimensions')
	}
}

// assert_min_rank ensures that a Tensor has at least a given rank
[inline]
fn (t &VclTensor<T>) assert_min_rank<T>(n int) ? {
	if n > t.rank() {
		return error('Bad number of dimensions')
	}
}