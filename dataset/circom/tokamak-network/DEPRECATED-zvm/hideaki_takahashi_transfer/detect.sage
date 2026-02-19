# Transfer - Under-Constrained Asset Transfer
# The vulnerability: assertions are not circuit constraints

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617

print("Transfer Circuit Vulnerability Demonstration")
print("=" * 60)
print()
print("The circuit uses assert() instead of circuit constraints:")
print("  assert(from_balance - amount >= 0);")
print()
print("This is evaluated at compile time, not proven at runtime!")
print()
print("Legitimate: from_balance=1000, amount=200")
print("  1000 - 200 >= 0 ✓")
print()
print("Exploit: Prover supplies from_balance=100, amount=200")
print("  No circuit constraint prevents this!")
print()
print("Note: This repository is DEPRECATED and no longer maintained.")
print("This is included for historical/educational purposes only.")
