

/*  �������ݿ� company  */
 drop database company
 create database company
 
 
 
/*  �������ݱ� MESSAGE  */
 CREATE TABLE MESSAGE (  messageID int PRIMARY KEY  auto_increment, title varchar (200) NOT NULL , content text NULL , writer varchar (50) NULL , writeDate varchar (50) NULL ,  count int NULL )

 INSERT MESSAGE (  title , content , writer , writeDate , count ) VALUES (  '�۸���͵�MP4' , '�۸���͵�MP4��ʲô���ӣ��۸��Ƕ��٣�' , 'leno' , '2016-10-04 16:23:21' , 1 )
 INSERT MESSAGE (  title , content , writer , writeDate , count ) VALUES ( 'Ʒ�������ּ��ʲô' , 'Ʒ�������ּ�ǣ�Ϊ�û�����' , 'softeem' , '2015-10-08 13:41:50' , 0 )

/*  �������ݱ� NEWS  */
 CREATE TABLE NEWS (  newsID int PRIMARY KEY auto_increment , title varchar (50) NOT NULL , content varchar (400) NULL , writerDate varchar (25) NULL )

 INSERT NEWS (  title , content , writerDate ) VALUES (  '����������������������Ż�' , 'Ϊ�˴�л����û�������������������������Żݡ�' , '2007-09-30' );
 INSERT NEWS (  title , content , writerDate ) VALUES ( '�ƽ����������ֻ����ܵ���' , ' ��������������ҹ��������Ѹ߷�֮һ�����쳤���У���Щ׼�������ֻ����������ǲ����Ѿ����˳���������ֻ��أ������ֻ��й��༭�ͰѴӱ��������ֻ������˽⵽�������쳤���м����������Ļ��������ܽᣬ������Щ����Ҳ�Ǵ���������Ͽɺ�ϲ���ģ��������ѡ���ǲ��Ǻͺܶ�����һ����ҲΪ��ûѡ��Ŀ������������Ƽ�' , '2007-10-01' );
 INSERT NEWS (  title , content , writerDate ) VALUES ( 'ʱ�����������ֻ�����Ƽ�' , '�������̼���˵��ʮһ�Ժ�ļ�����Ȼ�ǳ����ĺ�ʱ�򣬸����Żݻ��Ȼ�ڸ������������ݱ�Ľ��С���Ȼ���Żݹ����ʱ����С������Ϊ�������Ƽ���������Ƕ������ֻ������۵�����һ����ѡ�����ʺ���������Ƕ��ֻ���
' , '2007-10-01' );
 INSERT NEWS (  title , content , writerDate ) VALUES (  '����Ů�Է���E428�л���1180' , '������ص����ʣ�����Ů�������ߵ�ϲ����ĿǰЯ�ں��������û��ؼ۽��ۣ�1180Ԫ������Ȥ��Ů�����ѿ��Զ࿼��һ�¡�' , '2007-10-02' );
 INSERT NEWS (  title , content , writerDate ) VALUES (  '�����ڼ併�����Ͱ˿��������' , '����Sϵ��һֱ����ռ�Ͷ��г��������Ʒ��������ļ۸񣬷ḻ�Ĺ���ռ����һ�����г�������һЩ���ʴ�Ʒ�ƶ���Sϵ���޴롣���ڽ��۴�������һ�����S750�������ߴ�200Ԫ��Ŀǰ��1180Ԫ�ļ۸���1GB SD����
' , '2007-10-03' );
 INSERT NEWS (  title , content , writerDate ) VALUES (  '�����Ʒ������������' , ' ����Ĺ��쳤�ٵ�ָ����ȥ�ˣ����Ŵ�Ҷ���С��һ����һ������δ���ĸо�����֪��������ڹ���֮������������Ĵ���û�У�����еĻ�����ƪ���¾���Ϊ����׼���ġ�' , '2007-10-04' );
 INSERT NEWS (  title , content , writerDate ) VALUES ( '�����뾵ͷ���' , ' ���ܲ������Ѷ�ѡ���ڹ����ڼ�����һЩ�ݳ޵������Ʒ�����������ǽ�������ǵ���������߽�����ͷ�������Ż����в������ѻ�ѡ��ܿ����������Ŀ�������ȳ����Ͼ��ƽ��������Ǻ����Ļ����������Ǽۣ������Ļ��ѻ���ɽ�ֳ���JS�����۸������ת���ն�������˽��죬�ڻƽ��ܼ�������֮ʱ�����ǻ���һ���������ں��ػᡰ����ʱ�������г�������Щ�������ͺͽ�����ͷֵ�����ǹ�ע�ɣ�
' , '2007-10-05' );
 INSERT NEWS (  title , content , writerDate ) VALUES (  'MP4��ע������TOP10' , '���ƽ��ܹ��󣬺ܶ���ҵ��Ҫ�̵�һ���Լ�������ҵ������ȻMP4���ڻ������ڴ�������Ʒ������Ҳ�������⡣ʮһ�ڼ乺��MP4��Ϊ����װ�����߹�����Ʒ�����������г�Ҳ�����˲��٣���Ҳ����MP4��ע���е�TOP 10�������˲�С�仯��' , '2007-10-05' );
 INSERT NEWS (  title , content , writerDate ) VALUES (  '���R5������ǧ' , '�������� ƾ��Rϵ�еĳ��ڱ��֣�����ڼ����г�һֱ���Žϸߵ�֪���ȣ�����R7�����У�����Rϵ�л���Ҳ�������еı�Ե�����ձ����˽⵽���������е�R5���ۼ��Ѿ�ͻ�ƶ�ǧ��أ��û�ӵ���߱��佹��ͷ��CCD�����Լ�28mm�Ĺ�ǵȹ��ܣ�����ǳ�ͻ�������ڴ��㹺����������ļ�ͥ�����ص㿼��һ������Ʒ�� 
' , '2007-10-06' );
 --INSERT NEWS (  title , content , writerDate ) VALUES (  '����W55�����Ϳ�' , '˵�������Wϵ����������Ŵ�Ҷ�����е�İ�����䲻��Ĺ��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�Ͷ˻���W55�Ƴ�1550Ԫ�Ĵ����۸񣬸���һ��512M�ļ��������Ϊ��ֵ������Ȥ�Ķ��߿��Թ�עһ�¡�' , '2007-10-07' )


/*  �������ݱ� PRODUCT  */


  DROP TABLE PRODUCT 
 CREATE TABLE PRODUCT (  productID int PRIMARY KEY  auto_increment, serialNumber varchar (20) NULL , name varchar (20) NOT NULL , brand varchar (20) NULL , model varchar (20) NULL , price numeric (10, 0) NULL , picture varchar (20) NULL , description varchar (800) NULL )

 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  'z01' , '�ʼǱ�' , 'IBM' , 'g123' , 8000.00 , 'd_r11_10_r1_c1.jpg' , 'IBM5xϵ��IBM5xϵ��' );
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  's05' , '�����' , '����' , '05' , 8000.00 , 'd_r11_10_r1_c8.jpg' , 'IBM5xϵ��  ') ;                                                                                                                                                                                                                                                                                                                                                                                      ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES ( 'a08' , '�������' , '������' , '08' , 8000.00 , 'd_r11_10_r1_c16.jpg' , '������  a08 ')  ;                                                                                                                                                                                                                                                                                                                                                                                               ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  'v60' , '�ֻ�' , 'Ħ������' , '60' , 8000.00 , 'd_r11_10_r1_c22.jpg' , 'Ħ������ v60 ')  ;                                                                                                                                                                                                                                                                                                                                                                                                 ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  'e80' , '�ʼǱ�' , 'IBM' , '80' , 8000.00 , 'd_r11_10_r1_c2.jpg' , 'IBM5xϵ��      ')  ;                                                                                                                                                                                                                                                                                                                                                                                   ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES ( 'sx100' , '�����' , '����' , '100' , 8000.00 , 'd_r11_10_r1_c81.jpg' , '����sx100 ') ;                                                                                                                                                                                                                                                                                                                                                                                           ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  'k200' , '�������' , '�´�' , '200' , 8000.00 , 'd_r11_10_r1_c116.jpg' , ' �´�k200 ');                                                                                                                                                                                                                                                                                                                                                                                           ' )
 INSERT PRODUCT (  serialNumber , name , brand , model , price , picture , description ) VALUES (  'sa1980' , '�����ֻ�' , '����' , '1980' , 5000.00 , 'd_r11_10_r1_c221.jpg' , '���������Ʒ');


/*  �������ݱ� REVERT  */
 CREATE TABLE REVERT (  revertID int PRIMARY KEY auto_increment ,  messageID int NOT NULL , content text NULL , writer varchar (50) NULL , writeDate varchar (50) NULL )
 INSERT REVERT (   messageID,content , writer , writeDate ) VALUES (  1 , '�۸���͵�MP4�ǰ��������ӵģ��۸���1200' , 'zhangsan' , '2007-10-05' )
/*  �������ݱ� USERS  */
 CREATE TABLE USERS (  userID int PRIMARY KEY , userName varchar (20) NOT NULL , password varchar (20) NOT NULL ,  status int NOT NULL )
 INSERT USERS (  userName , password , status ) VALUES (  'softeem' , 'softeem' , 1 )
 INSERT USERS (  userName , password , status ) VALUES (  'leno' , '111' , 0 )
 INSERT USERS (  userName , password , status ) VALUES (  'admin' , '123' , 0 )
 INSERT USERS (  userName , password , status ) VALUES ( 'zhangsan' , '123' , 0 )
 alter table revert add constraint FK_messageID foreign key revert(messageID) references message(messageID) on delete cascade;