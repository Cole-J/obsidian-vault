Atomicity, Consistency, Isolation, and Durability

Atomicity: All or none transaction
Consistency: Balances of (X+Y) must be preserved
Isolation: Address Concurrent-Access-Anomalies issue
	(isolates concurrent access)
	Each transaction is unaware of the others in the system
Durability: After successful transfer, values of X and Y must persist even on system failure 