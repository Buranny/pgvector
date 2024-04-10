SELECT round(sparsevec_norm('{1:1,2:1}/2')::numeric, 5);
SELECT sparsevec_norm('{1:3,2:4}/2');
SELECT sparsevec_norm('{2:1}/2');
SELECT sparsevec_norm('{1:3e37,2:4e37}/2')::real;

SELECT l2_distance('{}/2'::sparsevec, '{1:3,2:4}/2');
SELECT l2_distance('{}/2'::sparsevec, '{2:1}/2');
SELECT '{}/2'::sparsevec <-> '{1:3,2:4}/2';

SELECT inner_product('{1:1,2:2}/2'::sparsevec, '{1:2,2:4}/2');
SELECT sparsevec_negative_inner_product('{1:1,2:2}/2', '{1:2,2:4}/2');

SELECT cosine_distance('{1:1,2:2}/2'::sparsevec, '{1:2,2:4}/2');
SELECT cosine_distance('{1:1,2:2}/2'::sparsevec, '{}/2');
SELECT cosine_distance('{1:1,2:1}/2'::sparsevec, '{1:-1,2:-1}/2');
SELECT cosine_distance('{1:2}/2'::sparsevec, '{2:2}/2');
SELECT cosine_distance('{}/1'::sparsevec, '{}/1');
SELECT cosine_distance('{1:2}/2'::sparsevec, '{1:1}/3');
