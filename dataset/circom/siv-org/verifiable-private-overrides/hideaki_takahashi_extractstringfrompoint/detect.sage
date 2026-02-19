# ExtractStringFromPoint - Under-Constrained Assignment
# The vulnerability: using <-- operator without proper constraints

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617

print("ExtractStringFromPoint Vulnerability Demonstration")
print("=" * 60)
print()
print("The circuit uses unconstrained assignment for intermediate signals:")
print("  signal shiftedFirstByte <-- ...")
print()
print("This allows arbitrary values that satisfy arithmetic but not logic:")
print("  - Legitimate: extract string with correct length")
print("  - Exploitable: assign wrong length values")
print()
print("The fix introduces constrained right-shift using Num2Bits")
print("which rigorously validates bit-level operations.")
