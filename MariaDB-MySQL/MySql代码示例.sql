// 1.利用索引避免排序的SQL
SELECT * FROM t1 ORDER BY key_part1,key_part2;
SELECT * FROM t1 WHERE key_part1 = constant ORDER BY key_part2;
SELECT * FROM t1 WHERE key_part1 > constant ORDER BY key_part1 ASC;
SELECT * FROM t1 WHERE key_part1 = constant1 AND key_part2 > constant2 ORDER BY key_part2;


// 2.不能利用索引避免排序的SQL
//排序字段在多个索引中，无法使用索引排序
SELECT * FROM t1 ORDER BY key_part1,key_part2, key2;
 
//排序键顺序与索引中列顺序不一致，无法使用索引排序
SELECT * FROM t1 ORDER BY key_part2, key_part1;
 
//升降序不一致，无法使用索引排序
SELECT * FROM t1 ORDER BY key_part1 DESC, key_part2 ASC;
 
//key_part1是范围查询，key_part2无法使用索引排序
SELECT * FROM t1 WHERE key_part1> constant ORDER BY key_part2;

