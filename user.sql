CREATE TABLE "user_sysuser" (
    "id" integer NOT NULL PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    "username" varchar(100) NOT NULL UNIQUE,
    "password" varchar(100) NOT NULL,
    "avatar" varchar(255) NULL,
    "email" varchar(100) NULL,
    "phonenumber" varchar(11) NULL,
    "login_date" timestamp with time zone NULL,
    "status" integer NULL,
    "create_time" timestamp with time zone NULL,
    "update_time" timestamp with time zone NULL,
    "remark" varchar(500) NULL
);

CREATE INDEX "user_sysuser_username_1b982a73_like" ON "user_sysuser" ("username" varchar_pattern_ops);

COMMIT;


-- 插入 sys_user 表
INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (1, 'python222', '123456', '20240906202303.jpg', 'caofeng2014@126.com', '18862857104', '2024-08-08', 1, '2024-08-08', '2024-08-08', '超级管理员');

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (3, '1', '123456', '20240808230603.jpg', 'caofeng2014@126.com', '18862857104', '2024-08-08', 0, '2024-08-08', '2024-08-14', '测试用户');

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (6, '4', '123456', '20240808230603.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL);

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (7, '5', '123456', '20240808230603.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL);

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (8, '6', '123456', '20240808230603.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL);

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (11, '9', '123456', '20240808230603.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL);

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (14, '666', '123456', 'default.jpg', 'caofeng2014@126.com', '18862857104', NULL, 1, '2024-08-13', NULL, '33');

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (15, 'jack', '123456', 'default.jpg', 'caofeng2014@126.com', '18862857104', NULL, 1, '2024-08-13', '2024-09-06', '禁用用户测试4');

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (16, '12323232', '123456', 'default.jpg', '1@126.com', '18862857104', NULL, 1, '2024-08-18', '2024-08-18', '115');

INSERT INTO "sys_user" ("id", "username", "password", "avatar", "email",
"phonenumber", "login_date", "status", "create_time", "update_time", "remark")
VALUES (17, 'marry', '123456', 'default.jpg', '111@qq.com', '15586521012', NULL, 1, '2024-09-05', NULL, '555');



-- 插入 sys_menu 表
INSERT INTO "sys_menu"("id", "name", "icon", "parent_id", "order_num", "path", "component", "menu_type", "perms", "create_time", "update_time", "remark")
VALUES
(1, '系统管理', 'system', 0, 1, '/sys', '', 'M', '', '2024-07-04', '2024-07-04', '系统管理目录'),
(2, '业务管理', 'monitor', 0, 2, '/bsns', '', 'M', '', '2024-07-04', '2024-07-04', '业务管理目录'),
(3, '用户管理', 'user', 1, 1, '/sys/user', 'sys/user/index', 'C', 'system:user:list', '2024-07-04', '2024-07-04', '用户管理菜单'),
(4, '角色管理', 'peoples', 1, 2, '/sys/role', 'sys/role/index', 'C', 'system:role:list', '2024-07-04', '2024-07-04', '角色管理菜单'),
(5, '菜单管理', 'tree-table', 1, 3, '/sys/menu', 'sys/menu/index', 'C', 'system:menu:list', '2024-07-04', '2024-07-04', '菜单管理菜单'),
(6, '部门管理', 'tree', 2, 1, '/bsns/department', 'bsns/Department', 'C', '', '2024-07-04', '2024-07-04', '部门管理菜单'),
(7, '岗位管理', 'post', 2, 2, '/bsns/post', 'bsns/Post', 'C', '', '2024-07-04', '2024-07-04', '岗位管理菜单');

-- 插入 sys_role 表
INSERT INTO "sys_role"("id", "name", "code", "create_time", "update_time", "remark")
VALUES
(1, '超级管理员', 'admin', '2024-07-04', '2024-07-04', '拥有系统最高权限'),
(2, '普通角色', 'common', '2024-07-04', '2024-07-04', '普通角色'),
(3, '测试角色', 'test', '2024-07-04', '2024-07-04', '测试角色'),
(4, '是', NULL, '2024-07-04', '2024-07-04', NULL),
(5, '3', NULL, '2024-07-04', '2024-07-04', NULL),
(6, '4', NULL, '2024-07-04', '2024-07-04', NULL),
(19, '测2', 'cc2', '2024-07-04', '2024-07-04', 'eewew2'),
(20, 'ccc测试', 'test2', '2024-07-04', '2024-07-04', 'xxx'),
(21, '今天测试角色', 'todytest', '2024-07-04', '2024-07-04', 'ccc'),
(22, '12', '123', '2024-07-04', '2024-08-29', '12');

-- 插入 sys_role_menu 表
INSERT INTO "sys_role_menu"("id", "menu_id", "role_id")
VALUES
(102, 2, 2),
(103, 6, 2),
(104, 7, 2),
(106, 1, 1),
(107, 3, 1),
(108, 4, 1),
(109, 5, 1),
(110, 2, 1),
(111, 6, 1),
(112, 7, 1),
(114, 1, 6),
(115, 5, 6),
(116, 2, 6),
(117, 6, 6),
(118, 7, 6);

-- 插入 sys_user_role 表
INSERT INTO "sys_user_role"("id", "role_id", "user_id")
VALUES
(1, 1, 1),
(2, 2, 1),
(13, 5, 6),
(17, 2, 6),
(18, 3, 6),
(19, 20, 6),
(20, 2, 8),
(21, 20, 8),
(22, 5, 8),
(23, 2, 17),
(24, 2, 3),
(25, 3, 3),
(26, 4, 3),
(27, 2, 15);
