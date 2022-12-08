-- ACID transation

BEGIN TRANSACTION;
-- Transfer $100 from account 1 to account 2
UPDATE accounts
SET balance = balance - 100
WHERE account_number = 1;

UPDATE accounts
SET balance = balance + 100
WHERE account_number = 2;

-- Check that both accounts have sufficient funds
IF (SELECT balance FROM accounts WHERE account_number = 1) < 0
   OR (SELECT balance FROM accounts WHERE account_number = 2) < 0
BEGIN
   -- If either account has insufficient funds, roll back the transaction
   ROLLBACK TRANSACTION;
END
ELSE
BEGIN
   -- Otherwise, commit the transaction
   COMMIT TRANSACTION;
END
