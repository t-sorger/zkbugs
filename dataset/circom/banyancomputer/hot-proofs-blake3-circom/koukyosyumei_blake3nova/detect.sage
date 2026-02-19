# Blake3Nova - Under-Constrained Depth Check
# The vulnerability exists in depth comparison without bit length validation

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617

print("Blake3Nova Depth Check Vulnerability Demonstration")
print("=" * 60)
print()
print("Legitimate depth check:")
print("  depth: 5")
print("  leaf_depth: 3")
print("  Check: exceed_depth = (5 < 3) = false")
print()
print("Exploit - using field overflow:")
exploit_depth = p - 73
exploit_leaf = 10
print(f"  depth: {exploit_depth}")
print(f"  leaf_depth: {exploit_leaf}")
print(f"  The comparison may incorrectly return true due to overflow")
print()
print("Fix: Add Num2Bits constraints to validate input bit lengths")
