# IntDiv - Under-Constrained Arithmetic
# The vulnerability: unconstrained quotient and remainder assignment

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617

print("IntDiv Vulnerability Demonstration")
print("=" * 60)
print()
print("The circuit computes division using unconstrained hints:")
print("  var quot_hint = in[0] \\ in[1];")
print("  var rem_hint = in[0] % in[1];")
print("  signal quot <-- quot_hint;")
print("  signal rem <-- rem_hint;")
print()
print("Legitimate: 1000 / 13 = quotient 76, remainder 12")
print("  Assertion: 13 * 76 + 12 = 1000 ✓")
print()
print("Attack: Provide invalid quotient/remainder that pass weak constraints")
print("  The fix adds rigorous bit-length and range checks")
