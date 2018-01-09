/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/7 10:16:57                            */
/*==============================================================*/


drop table if exists t_group_role;

drop table if exists t_perm_menu_rel;

drop table if exists t_perm_oper_rel;

drop table if exists t_role;

drop table if exists t_role_permission_rel;

drop table if exists t_sys_dept;

drop table if exists t_sys_menu;

drop table if exists t_sys_operate;

drop table if exists t_sys_permission;

drop table if exists t_sys_user_a;

drop table if exists t_user_group;

drop table if exists t_user_role_rel;

drop table if exists t_user_usergroup_rel;

/*==============================================================*/
/* Table: t_group_role                                          */
/*==============================================================*/
create table t_group_role
(
   group_id             varchar(50) comment '用户组编号',
   role_id              varchar(50) comment '角色编号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   id                   varchar(50) not null comment 'id',
   primary key (id)
);

/*==============================================================*/
/* Table: t_perm_menu_rel                                       */
/*==============================================================*/
create table t_perm_menu_rel
(
   id                   varchar(50) not null comment 'id',
   permission_id        varchar(50) comment '权限编号',
   menu_id              varchar(50) comment '菜单编号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_perm_oper_rel                                       */
/*==============================================================*/
create table t_perm_oper_rel
(
   id                   varchar(50) not null comment 'id',
   permission_id        varchar(50) comment '权限编号',
   operate_id           varchar(50) comment '操作编号',
   disabled             numeric(1,0) default 0 comment '启用禁用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   id                   varchar(50) not null comment 'id',
   role_name            varchar(50) comment '角色名称',
   mark                 varchar(400) comment '描述',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_role_permission_rel                                 */
/*==============================================================*/
create table t_role_permission_rel
(
   id                   varchar(50) not null comment 'id',
   role_id              varchar(50) comment '角色编号',
   perm_id              varchar(50) comment '权限编号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_dept                                            */
/*==============================================================*/
create table t_sys_dept
(
   id                   varchar(50) not null comment 'id',
   dept_name            varchar(50) comment '部门名称',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   pid                  varchar(50) comment '上级部门',
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_menu                                            */
/*==============================================================*/
create table t_sys_menu
(
   id                   varchar(50) not null comment 'id',
   menu_name            varchar(50) comment '菜单名称',
   pid                  varchar(50) comment '父菜单编号',
   url                  varchar(500) comment '路径',
   permission_code      varchar(50) comment '权限编码',
   order_num            numeric(2,0) comment '排序号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   img_url              varchar(500) comment '图标路径',
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_operate                                         */
/*==============================================================*/
create table t_sys_operate
(
   id                   varchar(50) not null comment 'id',
   operate_name         varchar(50) comment '操作名称',
   permission_code      varchar(50) comment '权限编码',
   disabled             numeric(1,0) default 0 comment '启用禁用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   pid                  varchar(50) comment '父级编号',
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_permission                                      */
/*==============================================================*/
create table t_sys_permission
(
   id                   varchar(50) not null comment 'id',
   permission_type      numeric(1,0) comment '权限类型',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_user_a                                          */
/*==============================================================*/
create table t_sys_user_a
(
   id                   varchar(50) not null comment 'id',
   username             varchar(50) comment '用户名',
   realname             varchar(50) comment '真实姓名',
   password             varchar(20) comment '密码',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   age                  numeric(3,0) comment '年龄',
   phone_num            varchar(11) comment '电话号码',
   sex                  numeric(1,0) comment '性别',
   dept_no              varchar(50) comment '部门编号',
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_group                                          */
/*==============================================================*/
create table t_user_group
(
   id                   varchar(50) not null comment 'id',
   group_name           varchar(50) comment '组名',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_role_rel                                       */
/*==============================================================*/
create table t_user_role_rel
(
   id                   varchar(50) not null comment 'id',
   user_id              varchar(50) comment '用户编号',
   role_id              varchar(50) comment '角色编号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

/*==============================================================*/
/* Table: t_user_usergroup_rel                                  */
/*==============================================================*/
create table t_user_usergroup_rel
(
   id                   varchar(50) not null comment 'id',
   user_id              varchar(50) comment '用户编号',
   group_id             varchar(50) comment '用户组编号',
   disabled             numeric(1,0) default 0 comment '禁用启用',
   del_flag             numeric(1,0) default 0 comment '删除标志',
   primary key (id)
);

