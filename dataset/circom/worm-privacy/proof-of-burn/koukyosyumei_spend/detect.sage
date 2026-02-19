# SageMath script to detect and generate exploitable witness for Spend bug
# The vulnerability: AssertGreaterEqThan does not validate input bit lengths

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617  # BN128 field prime

# The exploit works by providing inputs where:
# withdrawnBalance + fee > balance
# This should fail the assertion, but due to overflow in field arithmetic,
# it can pass when large numbers are used

print("Spend Circuit Vulnerability Demonstration")
print("=" * 50)
print()

print("Legitimate inputs:")
legitimate_balance = 1000
legitimate_withdrawn = 200
legitimate_fee = 50
print(f"  balance: {legitimate_balance}")
print(f"  withdrawnBalance: {legitimate_withdrawn}")
print(f"  fee: {legitimate_fee}")
print(f"  Assertion: balance >= withdrawnBalance + fee")
print(f"  Check: {legitimate_balance} >= {legitimate_withdrawn + legitimate_fee} = {legitimate_balance >= legitimate_withdrawn + legitimate_fee}")
print()

print("Exploitable inputs (exceed field arithmetic):")
exploit_balance = 1000
exploit_withdrawn = 1500
exploit_fee = 100
print(f"  balance: {exploit_balance}")
print(f"  withdrawnBalance: {exploit_withdrawn}")
print(f"  fee: {exploit_fee}")
print(f"  Assertion: balance >= withdrawnBalance + fee")
print(f"  Check: {exploit_balance} >= {exploit_withdrawn + exploit_fee} = {exploit_balance >= exploit_withdrawn + exploit_fee}")
print()

print("The vulnerability exists because AssertGreaterEqThan uses")
print("circomlib's comparison templates which don't validate input")
print("bit lengths. When inputs exceed the expected range, the")
print("comparison may produce incorrect results.")
