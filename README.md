# Ada Array Assignment Bug

This example demonstrates a common issue in Ada: the default assignment operator for arrays performs a shallow copy instead of a deep copy.  This means that if you assign one array to another, both arrays refer to the same underlying memory location. Modifying one array will inadvertently modify the other.  This can lead to unexpected behavior and difficult-to-find errors in larger programs.

The included `bug.ada` file demonstrates the problem.  The `bugSolution.ada` file provides a corrected version using a loop for deep copy or an allocator for dynamic allocation to ensure independent array copies.

## How to reproduce:
1. Compile and run `bug.ada`.
2. Observe that changing `A(1)` also changes `B(1)`, even though they appear to be distinct arrays.

## Solution:
Refer to `bugSolution.ada` for a demonstration of how to create true copies of arrays.
