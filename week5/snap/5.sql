

SELECT "friend_id" FROM "friends"
WHERE "user_id" = (
    SELECT "id" from "users"
    WHERE "username" = 'lovelytrust487'
)
INTERSECT
SELECT "friend_id" FROM "friends"
WHERE "user_id" = (
    SELECT "id" from "users"
    WHERE "username" = 'exceptionalinspiration482'
);
