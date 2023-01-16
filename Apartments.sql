-- Code for selecting Apartments from Apartments Table whose price is gretaer than average and the status is not rwnted
SELECT *
FROM Apartments
WHERE (price > (SELECT AVG(price) FROM Apartments)) and (status = 'Not rented')
ORDER BY price;
