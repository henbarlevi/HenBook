 create database HenBook
go

use HenBook
go

/*
//contain all the drop tables:
drop table MassageToUsers
drop table Massages
drop table Tags
drop table PicsLikes
drop table Pictures
drop table AlbumLikes
drop table Albums
drop table PostLikes
drop table Posts
drop table GroupMembers
drop table Groups
drop table FriendShips
drop table Users
*/



create table Users
(
	UserID int primary key identity,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	HomeTown varchar(30),
	Workplace varchar(30),
	PhoneNumber varchar(30),
	RelationshipWithUser int references Users(UserID) 
)

CREATE UNIQUE NONCLUSTERED INDEX idx_RelationshipWithUser_notnull
ON Users(RelationshipWithUser)
WHERE RelationshipWithUser IS NOT NULL;

Begin --USERS INSRET DATA

insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Hen','Bar-Levi','Bat-Yam','052-4771068')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Simon','Twito','Bat-Yam','052-4111068')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Yuli','Presely','Tel-Aviv','052-2334561')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Yoni','Thompson','Ramat-Aviv','052-2554561')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Yuli','Presely','Tel-Aviv','052-2345661')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Haim','Salamon','Ber-Sheva','052-2378761')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Omer','Nasi','Nehalim','052-2312461')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Braha','Cohen','Alfey-Menashe','054-1356561')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Dor','Toledano','Kiryat-Motskin','050-9356561')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Haim,','Moseh','Hor-Ahushiling','058-3356561')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber) values('Beny','Cohen','Yerushalaim','052-9991245')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Dvir','Yankovich','Shima','052-3356561','mishteretIsrael')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Eli','Mualem','Alfey-Menashe','054-1356561','Falafel-Baribua')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Samir','Tiby','Yafo','052-3356561','Humus-AbuHasan')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Yuval','Bar-Levi','Hod-Hasharon','054-7356561','Elad-Systems')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Timi','Choen','Hod-Hasharon','054-7356561','Elad-Systems')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Yuval','Yasem','Ashkelon','054-7356561','Elad-Systems')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Jonny','Lahenta','Estamo','054-7356561','Elad-Systems')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Tyler','Derden','NoWhere','054-7356569','InnerSelf')
insert into Users (FirstName,LastName,HomeTown,PhoneNumber,Workplace) values('Shontal','Meshi','Bet-Shean','052-7226561','Prada')
insert into Users (FirstName,LastName) values('Will','Smith')
insert into Users (FirstName,LastName) values('Homer','Simpson')
insert into Users (FirstName,LastName) values('Pewdie','Pie')
insert into Users (FirstName,LastName) values('Bell','Zbarsky')
insert into Users (FirstName,LastName) values('Ruslan','Peker')
insert into Users (FirstName,LastName) values('Sergey','Vuzvuzov')
insert into Users (FirstName,LastName) values('Hmimo','Menhaem')
insert into Users (FirstName,LastName) values('Dikla','Segev')
insert into Users (FirstName,LastName) values('Linoy','Choen')
insert into Users (FirstName,LastName) values('Rami','Shriki')
insert into Users (FirstName,LastName) values('Shrek','Oger')
insert into Users (FirstName,LastName) values('Fyona','Oger')
insert into Users (FirstName,LastName) values('Rami','Dabush')


update Users set RelationshipWithUser = 32 where UserID=31 
update Users set RelationshipWithUser = 31 where UserID=32 

update Users set RelationshipWithUser = 3 where UserID=14 
update Users set RelationshipWithUser = 14 where UserID=3 

update Users set RelationshipWithUser = 4 where UserID=7 
update Users set RelationshipWithUser = 7 where UserID=4 

update Users set RelationshipWithUser = 10 where UserID=29 
update Users set RelationshipWithUser = 29 where UserID=10 

update Users set RelationshipWithUser = 28 where UserID=33
update Users set RelationshipWithUser = 33 where UserID=28

END
create table Friendships
(
	UserID1 int references Users(UserID),
	UserID2 int references Users(UserID),
	primary key (UserID1,UserID2)
)

begin --Friendships INSERT DATA 
insert into Friendships (UserID1,UserID2) values(1,2)
insert into Friendships (UserID1,UserID2) values(1,4)
insert into Friendships (UserID1,UserID2) values(1,5)
insert into Friendships (UserID1,UserID2) values(1,10)
insert into Friendships (UserID1,UserID2) values(1,13)
insert into Friendships (UserID1,UserID2) values(1,12)
insert into Friendships (UserID1,UserID2) values(1,15)
insert into Friendships (UserID1,UserID2) values(1,26)
insert into Friendships (UserID1,UserID2) values(1,28)
insert into Friendships (UserID1,UserID2) values(2,3)
insert into Friendships (UserID1,UserID2) values(2,4)
insert into Friendships (UserID1,UserID2) values(2,5)
insert into Friendships (UserID1,UserID2) values(2,6)
insert into Friendships (UserID1,UserID2) values(2,7)
insert into Friendships (UserID1,UserID2) values(2,8)
insert into Friendships (UserID1,UserID2) values(2,9)
insert into Friendships (UserID1,UserID2) values(2,10)
insert into Friendships (UserID1,UserID2) values(2,11)
insert into Friendships (UserID1,UserID2) values(2,27)
insert into Friendships (UserID1,UserID2) values(2,26)
insert into Friendships (UserID1,UserID2) values(2,28)
insert into Friendships (UserID1,UserID2) values(3,9)
insert into Friendships (UserID1,UserID2) values(3,10)
insert into Friendships (UserID1,UserID2) values(3,11)
insert into Friendships (UserID1,UserID2) values(3,12)
insert into Friendships (UserID1,UserID2) values(3,13)
insert into Friendships (UserID1,UserID2) values(3,14)
insert into Friendships (UserID1,UserID2) values(3,33)
insert into Friendships (UserID1,UserID2) values(3,32)
insert into Friendships (UserID1,UserID2) values(4,7)
insert into Friendships (UserID1,UserID2) values(4,13)
insert into Friendships (UserID1,UserID2) values(4,15)
insert into Friendships (UserID1,UserID2) values(4,16)
insert into Friendships (UserID1,UserID2) values(4,19)
insert into Friendships (UserID1,UserID2) values(4,22)
insert into Friendships (UserID1,UserID2) values(4,23)
insert into Friendships (UserID1,UserID2) values(4,29)
insert into Friendships (UserID1,UserID2) values(5,9)
insert into Friendships (UserID1,UserID2) values(5,10)
insert into Friendships (UserID1,UserID2) values(5,18)
insert into Friendships (UserID1,UserID2) values(5,14)
insert into Friendships (UserID1,UserID2) values(5,19)
insert into Friendships (UserID1,UserID2) values(5,26)
insert into Friendships (UserID1,UserID2) values(5,31)
insert into Friendships (UserID1,UserID2) values(5,32)
insert into Friendships (UserID1,UserID2) values(6,7)
insert into Friendships (UserID1,UserID2) values(6,8)
insert into Friendships (UserID1,UserID2) values(6,9)
insert into Friendships (UserID1,UserID2) values(6,10)
insert into Friendships (UserID1,UserID2) values(6,13)
insert into Friendships (UserID1,UserID2) values(6,14)
insert into Friendships (UserID1,UserID2) values(6,33)
insert into Friendships (UserID1,UserID2) values(6,32)
insert into Friendships (UserID1,UserID2) values(6,11)
insert into Friendships (UserID1,UserID2) values(7,8)
insert into Friendships (UserID1,UserID2) values(7,10)
insert into Friendships (UserID1,UserID2) values(7,11)
insert into Friendships (UserID1,UserID2) values(7,18)
insert into Friendships (UserID1,UserID2) values(7,25)
insert into Friendships (UserID1,UserID2) values(8,15)
insert into Friendships (UserID1,UserID2) values(8,16)
insert into Friendships (UserID1,UserID2) values(8,17)
insert into Friendships (UserID1,UserID2) values(8,18)
insert into Friendships (UserID1,UserID2) values(8,20)
insert into Friendships (UserID1,UserID2) values(8,21)
insert into Friendships (UserID1,UserID2) values(8,32)
insert into Friendships (UserID1,UserID2) values(9,12)
insert into Friendships (UserID1,UserID2) values(9,16)
insert into Friendships (UserID1,UserID2) values(9,17)
insert into Friendships (UserID1,UserID2) values(9,18)
insert into Friendships (UserID1,UserID2) values(9,19)
insert into Friendships (UserID1,UserID2) values(9,20)
insert into Friendships (UserID1,UserID2) values(9,31)
insert into Friendships (UserID1,UserID2) values(9,26)
insert into Friendships (UserID1,UserID2) values(10,13)
insert into Friendships (UserID1,UserID2) values(10,14)
insert into Friendships (UserID1,UserID2) values(11,12)
insert into Friendships (UserID1,UserID2) values(11,17)
insert into Friendships (UserID1,UserID2) values(12,13)
insert into Friendships (UserID1,UserID2) values(12,15)
insert into Friendships (UserID1,UserID2) values(12,19)
insert into Friendships (UserID1,UserID2) values(13,28)
insert into Friendships (UserID1,UserID2) values(13,21)
insert into Friendships (UserID1,UserID2) values(14,15)
insert into Friendships (UserID1,UserID2) values(14,21)
insert into Friendships (UserID1,UserID2) values(15,20)
insert into Friendships (UserID1,UserID2) values(16,17)
insert into Friendships (UserID1,UserID2) values(16,19)
insert into Friendships (UserID1,UserID2) values(17,27)
insert into Friendships (UserID1,UserID2) values(18,28)
insert into Friendships (UserID1,UserID2) values(18,29)
insert into Friendships (UserID1,UserID2) values(19,20)
insert into Friendships (UserID1,UserID2) values(19,29)
insert into Friendships (UserID1,UserID2) values(20,27)
insert into Friendships (UserID1,UserID2) values(21,25)
insert into Friendships (UserID1,UserID2) values(21,24)
insert into Friendships (UserID1,UserID2) values(22,24)
insert into Friendships (UserID1,UserID2) values(23,24)
insert into Friendships (UserID1,UserID2) values(23,32)
insert into Friendships (UserID1,UserID2) values(24,28)
insert into Friendships (UserID1,UserID2) values(25,26)
insert into Friendships (UserID1,UserID2) values(27,31)
insert into Friendships (UserID1,UserID2) values(28,33)
insert into Friendships (UserID1,UserID2) values(29,30)
insert into Friendships (UserID1,UserID2) values(30,32)
insert into Friendships (UserID1,UserID2) values(31,33)


END

create table Groups
(
	GroupID int primary key identity,
	GroupName varchar(30) not null,
	GroupCategory varchar(30),
	GroupManagerID int references Users(UserID) not null
)

begin --Groups INSERT DATA
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('Totaloss','Comedy',10)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('InnerSelf','Spiritual',16)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('RSD','Self-Development',27)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('SUM41','Music',23)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('System Of A Down Fans','Music',27)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('Vipasana','Self-Development',23)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('Yuventus Fans','Sports',23)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('Gamers','Video-Games',10)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('YouTube','Videos',33)
insert into Groups (GroupName,GroupCategory,GroupManagerID) values ('FunnyVideos','Videos',15)


END 

create table GroupMembers
(
	GroupID int references Groups(GroupID),
	UserID int references Users(UserID),
	primary key (GroupID,UserID)
)

begin --GroupMembers INSERT DATA
insert into GroupMembers (GroupID,UserID) values (1,1)
insert into GroupMembers (GroupID,UserID) values (1,2)
insert into GroupMembers (GroupID,UserID) values (1,13)
insert into GroupMembers (GroupID,UserID) values (1,28)
insert into GroupMembers (GroupID,UserID) values (1,30)

insert into GroupMembers (GroupID,UserID) values (2,1)
insert into GroupMembers (GroupID,UserID) values (2,2)
insert into GroupMembers (GroupID,UserID) values (2,3)
insert into GroupMembers (GroupID,UserID) values (2,4)
insert into GroupMembers (GroupID,UserID) values (2,5)
insert into GroupMembers (GroupID,UserID) values (2,7)
insert into GroupMembers (GroupID,UserID) values (2,8)
insert into GroupMembers (GroupID,UserID) values (2,9)
insert into GroupMembers (GroupID,UserID) values (2,11)
insert into GroupMembers (GroupID,UserID) values (2,12)
insert into GroupMembers (GroupID,UserID) values (2,13)
insert into GroupMembers (GroupID,UserID) values (2,14)
insert into GroupMembers (GroupID,UserID) values (2,15)
insert into GroupMembers (GroupID,UserID) values (2,16)
insert into GroupMembers (GroupID,UserID) values (2,17)
insert into GroupMembers (GroupID,UserID) values (2,18)
insert into GroupMembers (GroupID,UserID) values (2,19)
insert into GroupMembers (GroupID,UserID) values (2,20)
insert into GroupMembers (GroupID,UserID) values (2,21)
insert into GroupMembers (GroupID,UserID) values (2,22)
insert into GroupMembers (GroupID,UserID) values (2,23)
insert into GroupMembers (GroupID,UserID) values (2,24)
insert into GroupMembers (GroupID,UserID) values (2,25)
insert into GroupMembers (GroupID,UserID) values (2,26)

insert into GroupMembers (GroupID,UserID) values (3,1)
insert into GroupMembers (GroupID,UserID) values (3,10)
insert into GroupMembers (GroupID,UserID) values (3,13)
insert into GroupMembers (GroupID,UserID) values (3,17)
insert into GroupMembers (GroupID,UserID) values (3,16)
insert into GroupMembers (GroupID,UserID) values (3,20)
insert into GroupMembers (GroupID,UserID) values (3,21)
insert into GroupMembers (GroupID,UserID) values (3,23)

insert into GroupMembers (GroupID,UserID) values (4,13)
insert into GroupMembers (GroupID,UserID) values (4,14)

insert into GroupMembers (GroupID,UserID) values (5,16)
insert into GroupMembers (GroupID,UserID) values (5,17)
insert into GroupMembers (GroupID,UserID) values (5,18)
insert into GroupMembers (GroupID,UserID) values (5,19)
insert into GroupMembers (GroupID,UserID) values (5,20)

insert into GroupMembers (GroupID,UserID) values (6,1)
insert into GroupMembers (GroupID,UserID) values (6,11)
insert into GroupMembers (GroupID,UserID) values (6,12)
insert into GroupMembers (GroupID,UserID) values (6,13)
insert into GroupMembers (GroupID,UserID) values (6,14)
insert into GroupMembers (GroupID,UserID) values (6,15)
insert into GroupMembers (GroupID,UserID) values (6,10)

insert into GroupMembers (GroupID,UserID) values (7,33)
insert into GroupMembers (GroupID,UserID) values (7,32)

insert into GroupMembers (GroupID,UserID) values (8,2)
insert into GroupMembers (GroupID,UserID) values (8,4)
insert into GroupMembers (GroupID,UserID) values (8,21)
insert into GroupMembers (GroupID,UserID) values (8,22)
insert into GroupMembers (GroupID,UserID) values (8,23)
insert into GroupMembers (GroupID,UserID) values (8,24)
insert into GroupMembers (GroupID,UserID) values (8,25)
insert into GroupMembers (GroupID,UserID) values (8,26)
insert into GroupMembers (GroupID,UserID) values (8,27)
insert into GroupMembers (GroupID,UserID) values (8,31)

insert into GroupMembers (GroupID,UserID) values (9,1)
insert into GroupMembers (GroupID,UserID) values (9,2)
insert into GroupMembers (GroupID,UserID) values (9,3)
insert into GroupMembers (GroupID,UserID) values (9,4)
insert into GroupMembers (GroupID,UserID) values (9,5)
insert into GroupMembers (GroupID,UserID) values (9,6)
insert into GroupMembers (GroupID,UserID) values (9,7)
insert into GroupMembers (GroupID,UserID) values (9,8)
insert into GroupMembers (GroupID,UserID) values (9,9)
insert into GroupMembers (GroupID,UserID) values (9,10)
insert into GroupMembers (GroupID,UserID) values (9,11)
insert into GroupMembers (GroupID,UserID) values (9,12)
insert into GroupMembers (GroupID,UserID) values (9,13)
insert into GroupMembers (GroupID,UserID) values (9,14)
insert into GroupMembers (GroupID,UserID) values (9,15)
insert into GroupMembers (GroupID,UserID) values (9,16)
insert into GroupMembers (GroupID,UserID) values (9,17)
insert into GroupMembers (GroupID,UserID) values (9,18)
insert into GroupMembers (GroupID,UserID) values (9,19)
insert into GroupMembers (GroupID,UserID) values (9,20)
insert into GroupMembers (GroupID,UserID) values (9,21)
insert into GroupMembers (GroupID,UserID) values (9,22)
insert into GroupMembers (GroupID,UserID) values (9,23)
insert into GroupMembers (GroupID,UserID) values (9,24)
insert into GroupMembers (GroupID,UserID) values (9,25)
insert into GroupMembers (GroupID,UserID) values (9,26)
insert into GroupMembers (GroupID,UserID) values (9,27)
insert into GroupMembers (GroupID,UserID) values (9,28)
insert into GroupMembers (GroupID,UserID) values (9,29)
insert into GroupMembers (GroupID,UserID) values (9,30)
insert into GroupMembers (GroupID,UserID) values (9,31)
insert into GroupMembers (GroupID,UserID) values (9,32)



END

create table Posts
(
	PostID int primary key identity,
	UserID int references Users(UserID) not null,
	Content varchar(450) not null,
	PostDate Datetime not null default getdate()
)

begin --Posts INSERT DATA
insert into Posts (UserID,Content) values(1,'what a lovely day it is everybody')
insert into Posts (UserID,Content) values(1,'Look at my new Album from the lake!!! it was so awesome')
insert into Posts (UserID,Content) values(2,'im feeling sick today, can someone send me the homework of today')
insert into Posts (UserID,Content,PostDate) values(3,'there is some new photoes from my trip to india with Hen Bar Levi and Simon Twito',GETDATE()-1110)
insert into Posts (UserID,Content) values(4,'look at my new 2 albums from last night!')
insert into Posts (UserID,Content,PostDate) values(5,'the new song of bon iver is awesome..',GETDATE()-7)
insert into Posts (UserID,Content,PostDate) values(5,'another day at the GYM, getting shreded for the summer',GETDATE()-300)
insert into Posts (UserID,Content,PostDate) values(6,'look at that photo! its me!',GETDATE()-2)
insert into Posts (UserID,Content,PostDate) values(8,'is this the first post in this socialnetwork? no but its old...',GETDATE()-1110)
insert into Posts (UserID,Content,PostDate) values(10,'U..S....A!USA! USA!',GETDATE()-300)
insert into Posts (UserID,Content,PostDate) values(10,'Yes But.....its different.....',GETDATE()-11)
insert into Posts (UserID,Content,PostDate) values(10,'IM in the Army now',GETDATE()-1100)
insert into Posts (UserID,Content,PostDate) values(10,'starting to learn in sela everybody.....',GETDATE()-150)
insert into Posts (UserID,Content,PostDate) values(10,'bla bla bla that all im gonna say',GETDATE()-11)
insert into Posts (UserID,Content) values(13,'Relax, nothing is under control')
insert into Posts (UserID,Content,PostDate) values(17,'im really tierd',GETDATE()-11)
insert into Posts (UserID,Content) values(20,'Yay im Very Happy')
insert into Posts (UserID,Content) values(21,'any body who say that justin beiber isnt awesome is wrong!')
insert into Posts (UserID,Content) values(22,'bingardium Levyossaaaaaa')
insert into Posts (UserID,Content) values(23,'did someone saw the last oneycartoons video!')
insert into Posts (UserID,Content) values(24,'i would realy like some burgeer right now')
insert into Posts (UserID,Content) values(25,'no no no baby no no no dont lie')
insert into Posts (UserID,Content) values(26,'here with my babe in Eylat, having a great time')
insert into Posts (UserID,Content,PostDate) values(31,'look at my new 2 albums from last night!',GETDATE()-660)
insert into Posts (UserID,Content) values(32,'when i get sad, i stop being sad and be awesome instead. true story!')
insert into Posts (UserID,Content,PostDate) values(8,'very old post',GETDATE()-1700)
insert into Posts (UserID,Content,PostDate) values(8,'very old post',GETDATE()-1800)
insert into Posts (UserID,Content,PostDate) values(8,'very old post',GETDATE()-1900)
insert into Posts (UserID,Content,PostDate) values(1,'im Hen and this is my post',GETDATE()-321)
insert into Posts (UserID,Content,PostDate) values(1,'im Hen and this is my post2',GETDATE()-321)
insert into Posts (UserID,Content,PostDate) values(1,'im Hen and this is my post3',GETDATE()-321)
insert into Posts (UserID,Content,PostDate) values(1,'im Hen and this is my post4',GETDATE()-321)
insert into Posts (UserID,Content,PostDate) values(15,'im Yuval and this is my post',GETDATE()-21)
insert into Posts (UserID,Content,PostDate) values(15,'im Yuval and this is my post2',GETDATE()-21)
insert into Posts (UserID,Content,PostDate) values(15,'im Yuval and this is my post3',GETDATE()-21)
insert into Posts (UserID,Content,PostDate) values(15,'im Yuval and this is my post4',GETDATE()-21)
insert into Posts (UserID,Content,PostDate) values(15,'im Yuval and this is my post5',GETDATE()-21)
END

create table PostLikes
(
	PostID int references Posts(PostID),
	UserID int references Users(UserID),
	primary key (PostID,UserID)
)
begin --PostLikes INSERT DATA
insert into PostLikes (PostID,UserID) values(1,2)
insert into PostLikes (PostID,UserID) values(1,4)
insert into PostLikes (PostID,UserID) values(1,5)
insert into PostLikes (PostID,UserID) values(1,10)
insert into PostLikes (PostID,UserID) values(1,13)
insert into PostLikes (PostID,UserID) values(1,28)

insert into PostLikes (PostID,UserID) values(2,2)
insert into PostLikes (PostID,UserID) values(2,5)
insert into PostLikes (PostID,UserID) values(2,26)
insert into PostLikes (PostID,UserID) values(2,27)
insert into PostLikes (PostID,UserID) values(2,28)


insert into PostLikes (PostID,UserID) values(3,7)
insert into PostLikes (PostID,UserID) values(3,8)
insert into PostLikes (PostID,UserID) values(3,10)
insert into PostLikes (PostID,UserID) values(3,11)

insert into PostLikes (PostID,UserID) values(4,9)
insert into PostLikes (PostID,UserID) values(4,10)
insert into PostLikes (PostID,UserID) values(4,11)
insert into PostLikes (PostID,UserID) values(4,12)
insert into PostLikes (PostID,UserID) values(4,13)
insert into PostLikes (PostID,UserID) values(4,14)
insert into PostLikes (PostID,UserID) values(4,32)
insert into PostLikes (PostID,UserID) values(4,33)

insert into PostLikes (PostID,UserID) values(5,13)
insert into PostLikes (PostID,UserID) values(5,15)
insert into PostLikes (PostID,UserID) values(5,16)
insert into PostLikes (PostID,UserID) values(5,19)

insert into PostLikes (PostID,UserID) values(6,9)
insert into PostLikes (PostID,UserID) values(7,18)
insert into PostLikes (PostID,UserID) values(7,19)

insert into PostLikes (PostID,UserID) values(8,7)
insert into PostLikes (PostID,UserID) values(8,8)
insert into PostLikes (PostID,UserID) values(8,9)

insert into PostLikes (PostID,UserID) values(9,15)
insert into PostLikes (PostID,UserID) values(9,16)
insert into PostLikes (PostID,UserID) values(9,18)

insert into PostLikes (PostID,UserID) values(10,13)
insert into PostLikes (PostID,UserID) values(10,14)
insert into PostLikes (PostID,UserID) values(11,14)
insert into PostLikes (PostID,UserID) values(12,14)
insert into PostLikes (PostID,UserID) values(13,13)
insert into PostLikes (PostID,UserID) values(14,14)

insert into PostLikes (PostID,UserID) values(15,1)
insert into PostLikes (PostID,UserID) values(17,8)

insert into PostLikes (PostID,UserID) values(18,8)

insert into PostLikes (PostID,UserID) values(25,3)
insert into PostLikes (PostID,UserID) values(25,5)
insert into PostLikes (PostID,UserID) values(25,8)

insert into PostLikes (PostID,UserID) values(29,2)
insert into PostLikes (PostID,UserID) values(30,2)
insert into PostLikes (PostID,UserID) values(31,2)
insert into PostLikes (PostID,UserID) values(32,2)

insert into PostLikes (PostID,UserID) values(33,12)
insert into PostLikes (PostID,UserID) values(34,12)
insert into PostLikes (PostID,UserID) values(35,12)
insert into PostLikes (PostID,UserID) values(36,12)
insert into PostLikes (PostID,UserID) values(37,12)

insert into PostLikes (PostID,UserID) values(33,1)
insert into PostLikes (PostID,UserID) values(34,1)
insert into PostLikes (PostID,UserID) values(35,1)
insert into PostLikes (PostID,UserID) values(36,1)
insert into PostLikes (PostID,UserID) values(37,1)

END

create table Albums
(
	AlbumID int primary key identity,
	AlbumName varchar(30) not null default convert(varchar(10), getdate(), 120) ,
	AlbumDescription varchar(250) ,
	PostID int references Posts(PostID)
	
)

begin --Albums INSERT DATA
insert into Albums (PostID) values(1)
insert into Albums (PostID,AlbumName,AlbumDescription) values(2,'Lake Album','look at this cool lake album')
insert into Albums (PostID,AlbumName,AlbumDescription) values(2,'Lake Album2','another album from the lake')
insert into Albums (PostID,AlbumName,AlbumDescription) values(4,'India Trip','my india trip was awaesome!!')
insert into Albums (PostID,AlbumName) values(4,'india Trip with Hen and Simon')
insert into Albums (PostID,AlbumName,AlbumDescription) values(5,'LasT NIGHT!!','last night was great')
insert into Albums (PostID,AlbumName) values(5,'LAST NIGHT!!')
insert into Albums (PostID,AlbumName) values(7,'GYM')
insert into Albums (PostID,AlbumName) values(8,'ME')
insert into Albums (PostID,AlbumName) values(10,'USA')
insert into Albums (PostID,AlbumName) values(10,'USA proceeding the trip')
insert into Albums (PostID,AlbumName) values(11,'my Army Album')
insert into Albums (PostID,AlbumName) values(15,'Relax')
insert into Albums (PostID,AlbumName) values(23,'Eylat')
insert into Albums (PostID,AlbumName) values(24,'last night whooohoo')
insert into Albums (PostID,AlbumName) values(24,'lastnight album number 2 whoho')
END

create table AlbumLikes
(
	AlbumID int references Albums(AlbumID),
	UserID int references Users(UserID),
	primary key (AlbumID,UserID)
)
begin --AlbumLikes INSERT DATA
insert into AlbumLikes (AlbumID,UserID) values(1,3)
insert into AlbumLikes (AlbumID,UserID) values(1,4)
insert into AlbumLikes (AlbumID,UserID) values(1,7)
insert into AlbumLikes (AlbumID,UserID) values(1,18)

insert into AlbumLikes (AlbumID,UserID) values(2,18)
insert into AlbumLikes (AlbumID,UserID) values(2,22)
insert into AlbumLikes (AlbumID,UserID) values(2,31)
insert into AlbumLikes (AlbumID,UserID) values(2,32)
insert into AlbumLikes (AlbumID,UserID) values(2,33)

insert into AlbumLikes (AlbumID,UserID) values(3,1)
insert into AlbumLikes (AlbumID,UserID) values(3,2)

insert into AlbumLikes (AlbumID,UserID) values(4,9)
insert into AlbumLikes (AlbumID,UserID) values(4,10)
insert into AlbumLikes (AlbumID,UserID) values(4,11)
insert into AlbumLikes (AlbumID,UserID) values(4,12)
insert into AlbumLikes (AlbumID,UserID) values(4,13)
insert into AlbumLikes (AlbumID,UserID) values(4,17)

insert into AlbumLikes (AlbumID,UserID) values(8,2)
insert into AlbumLikes (AlbumID,UserID) values(8,6)
insert into AlbumLikes (AlbumID,UserID) values(8,7)
insert into AlbumLikes (AlbumID,UserID) values(8,8)
insert into AlbumLikes (AlbumID,UserID) values(8,9)

insert into AlbumLikes (AlbumID,UserID) values(13,1)
insert into AlbumLikes (AlbumID,UserID) values(13,2)
insert into AlbumLikes (AlbumID,UserID) values(13,10)
insert into AlbumLikes (AlbumID,UserID) values(13,13)


END

create table Pictures
(
	PictureID int primary key identity,
	Url varchar(300) not null,
	Name varchar(30) ,
	PicDescription varchar(250),
	AlbumID int references Albums(AlbumID) not null,
	PostID int references Posts(PostID) not null
)

begin --Pictures INSERT DATA
insert into Pictures (AlbumID,PostID,Name,Url) values (1,1,'lovely day','https://www.imagesstorage.com/haopiaas?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (1,1,'lovely day2','https://www.imagesstorage.com/haopasdiaas?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (1,1,'lovely day3','https://www.imagesstorage.com/hdhfopiaas?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (2,2,'me in the lake','https://www.imagesstorage.com/hfghfghopiaas?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (2,2,'me and simon in the lake','https://www.imagesstorage.com/lake23?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (2,2,'me and yuval in the lake','https://www.imagesstorage.com/lake454124?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (3,2,'more cool lake pic','https://www.imagesstorage.com/lake2314?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (3,2,'more cool lake pic2','https://www.imagesstorage.com/la77ke33?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (4,4,'India :)','https://www.imagesstorage.com/ind?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (4,4,'India2 :)','https://www.imagesstorage.com/ind3?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (5,4,'Hen and simon photo','https://www.imagesstorage.com/i77nd?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (5,4,'ME Hen and simon photo','https://www.imagesstorage.com/i22n77d?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (5,4,'simon and me! :)','https://www.imagesstorage.com/in22d57?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (6,5,'last night pic1','https://www.imagesstorage.com/ind456?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (6,5,'last night pic2','https://www.imagesstorage.com/ind456?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (6,5,'last night pic3','https://www.imagesstorage.com/ind?Q45654>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (6,5,'last night pic4','https://www.imagesstorage.com/ind45646?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (7,5,'more from last night pic1','https://www.imagesstorage.com/ind456?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (7,5,'more from last night pic2','https://www.imagesstorage.com/in57d?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (7,5,'more from last night pic3','https://www.imagesstorage.com/i45747nd?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (8,7,'No Pain No Gain','https://www.imagesstorage.com/ind4574?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (9,8,'Me1','https://www.imagesstorage.com/ind47547?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (9,8,'Me2','https://www.imagesstorage.com/i4574nd?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (9,8,'Me myself and i','https://www.imagesstorage.com/in457d?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (10,10,'from the usa trip','https://www.imagesstorage.com/457ind?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (10,10,'holding usa flag','https://www.imagesstorage.com/ind?Q45745>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (10,10,'so excited from this usa trip','https://www.imagesstorage.com/in4574d?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (10,10,'first hot dog in usa','https://www.imagesstorage.com/ind574?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (11,10,'usa keep moving on','https://www.imagesstorage.com/ind?245757Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (11,10,'it was a nice trip','https://www.imagesstorage.com/ind?Q245754>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (12,11,'brothers in arms','https://www.imagesstorage.com/ind?Q574>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (12,11,'me and Rami','https://www.imagesstorage.com/ind?Q257>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (12,11,'m16','https://www.imagesstorage.com/ind?257Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (12,11,'rifle','https://www.imagesstorage.com/ind2457?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (12,11,'my uniforms','https://www.imagesstorage.com/ind2547?Q>W')

insert into Pictures (AlbumID,PostID,Name,Url) values (15,24,'last night1','https://www.imagesstorage.com/ind257?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (16,24,'last night2 from album 2','https://www.imagesstorage.com/ind?546Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (13,15,'Relaxing','https://www.imagesstorage.com/indvcx?Q>W')
insert into Pictures (AlbumID,PostID,Name,Url) values (14,23,'me and babe','https://www.imagesstorage.com/ind?qweQ>W')

END
create table PicsLikes
(
	PictureID int references Pictures(PictureID),
	UserID int references Users(UserID),
	primary key (PictureID,UserID)
)
begin --PicsLikes INSERT DATA
insert into PicsLikes(PictureID,UserID) values(1,10)
insert into PicsLikes(PictureID,UserID) values(1,12)
insert into PicsLikes(PictureID,UserID) values(1,26)
insert into PicsLikes(PictureID,UserID) values(1,28)

insert into PicsLikes(PictureID,UserID) values(2,10)
insert into PicsLikes(PictureID,UserID) values(2,12)

insert into PicsLikes(PictureID,UserID) values(4,12)

insert into PicsLikes(PictureID,UserID) values(5,1)
insert into PicsLikes(PictureID,UserID) values(5,2)
insert into PicsLikes(PictureID,UserID) values(5,3)
insert into PicsLikes(PictureID,UserID) values(5,4)
insert into PicsLikes(PictureID,UserID) values(5,5)
insert into PicsLikes(PictureID,UserID) values(5,10)
insert into PicsLikes(PictureID,UserID) values(5,12)
insert into PicsLikes(PictureID,UserID) values(5,13)
insert into PicsLikes(PictureID,UserID) values(5,26)
insert into PicsLikes(PictureID,UserID) values(5,28)

insert into PicsLikes(PictureID,UserID) values(6,1)
insert into PicsLikes(PictureID,UserID) values(6,12)
insert into PicsLikes(PictureID,UserID) values(6,13)
insert into PicsLikes(PictureID,UserID) values(6,15)

insert into PicsLikes(PictureID,UserID) values(7,1)
insert into PicsLikes(PictureID,UserID) values(8,12)

insert into PicsLikes(PictureID,UserID) values(9,2)
insert into PicsLikes(PictureID,UserID) values(9,14)
insert into PicsLikes(PictureID,UserID) values(9,32)
insert into PicsLikes(PictureID,UserID) values(9,33)

insert into PicsLikes(PictureID,UserID) values(11,1)
insert into PicsLikes(PictureID,UserID) values(11,2)
insert into PicsLikes(PictureID,UserID) values(11,15)
insert into PicsLikes(PictureID,UserID) values(11,3)
insert into PicsLikes(PictureID,UserID) values(11,26)
insert into PicsLikes(PictureID,UserID) values(11,28)
insert into PicsLikes(PictureID,UserID) values(11,32)
insert into PicsLikes(PictureID,UserID) values(11,33)

insert into PicsLikes(PictureID,UserID) values(12,1)
insert into PicsLikes(PictureID,UserID) values(12,2)
insert into PicsLikes(PictureID,UserID) values(12,3)
insert into PicsLikes(PictureID,UserID) values(12,4)
insert into PicsLikes(PictureID,UserID) values(12,5)
insert into PicsLikes(PictureID,UserID) values(12,10)
insert into PicsLikes(PictureID,UserID) values(12,12)
insert into PicsLikes(PictureID,UserID) values(12,13)
insert into PicsLikes(PictureID,UserID) values(12,15)
insert into PicsLikes(PictureID,UserID) values(12,32)
insert into PicsLikes(PictureID,UserID) values(12,33)

insert into PicsLikes(PictureID,UserID) values(13,1)
insert into PicsLikes(PictureID,UserID) values(13,2)
insert into PicsLikes(PictureID,UserID) values(13,3)

insert into PicsLikes (PictureID,UserID) values(14,4)
insert into PicsLikes (PictureID,UserID) values(14,13)
insert into PicsLikes (PictureID,UserID) values(14,15)
insert into PicsLikes (PictureID,UserID) values(14,16)
insert into PicsLikes (PictureID,UserID) values(14,19)

insert into PicsLikes (PictureID,UserID) values(21,10)
insert into PicsLikes (PictureID,UserID) values(21,14)
insert into PicsLikes (PictureID,UserID) values(21,18)

insert into PicsLikes (PictureID,UserID) values(32,30)
insert into PicsLikes (PictureID,UserID) values(32,3)

END
create table Tags
(
	PictureID int references Pictures(PictureID),
	UserID int references Users(UserID),
	primary key (PictureID,UserID)
)

begin --Tags INSERT DATA

--user 1 pics
insert into Tags (PictureID,UserID) values(1,1)
insert into Tags (PictureID,UserID) values(3,1)
insert into Tags (PictureID,UserID) values(4,1)

insert into Tags (PictureID,UserID) values(5,1)
insert into Tags (PictureID,UserID) values(5,2)

insert into Tags (PictureID,UserID) values(6,1)
insert into Tags (PictureID,UserID) values(6,15)

--user 3 pics
insert into Tags (PictureID,UserID) values(9,3)

insert into Tags (PictureID,UserID) values(11,1)
insert into Tags (PictureID,UserID) values(11,2)

insert into Tags (PictureID,UserID) values(12,1)
insert into Tags (PictureID,UserID) values(12,2)
insert into Tags (PictureID,UserID) values(12,3)

insert into Tags (PictureID,UserID) values(13,2)
insert into Tags (PictureID,UserID) values(13,3)

--user 4 pics
insert into Tags (PictureID,UserID) values(14,4)
insert into Tags (PictureID,UserID) values(14,13)
insert into Tags (PictureID,UserID) values(14,15)
insert into Tags (PictureID,UserID) values(14,16)
insert into Tags (PictureID,UserID) values(14,19)

insert into Tags (PictureID,UserID) values(15,4)
insert into Tags (PictureID,UserID) values(17,4)

insert into Tags (PictureID,UserID) values(20,19)
insert into Tags (PictureID,UserID) values(20,22)
insert into Tags (PictureID,UserID) values(20,23)

--user 5
insert into Tags (PictureID,UserID) values(21,5)
--user 6
insert into Tags (PictureID,UserID) values(24,6)

END
create table Massages
(
	MassageID int primary key identity,
	Subject varchar(50) not null,
	Content varchar(450) not null,
	UserID int references Users(UserID) not null
)

begin --Massages INSERT DATA

insert into Massages (Subject,Content,UserID) values ('hi simon its hen','hi its me hen whasup?!',1)
insert into Massages (Subject,Content,UserID) values ('hi every body!!','hi its a massage to more than 1 person',1)
insert into Massages (Subject,Content,UserID) values ('hi yuli','yuli did u do the last homework assigment',1)


insert into Massages (Subject,Content,UserID) values ('listen Hen','i need your help',2)
insert into Massages (Subject,Content,UserID) values ('hello omer','nice to meet you',2)
insert into Massages (Subject,Content,UserID) values ('group massage','hi its a massage to more than 1 person',2)

insert into Massages (Subject,Content,UserID) values ('massage to Hen','hi its yuval',15)
insert into Massages (Subject,Content,UserID) values ('massage to simon','hi its yuval',15)
insert into Massages (Subject,Content,UserID) values ('massage to yuli','hi its yuval',15)
insert into Massages (Subject,Content,UserID) values ('massage to yoni','hi its yuval',15)
insert into Massages (Subject,Content,UserID) values ('massage to haim','hi its yuval',15)

insert into Massages (Subject,Content,UserID) values ('massage to Hen','hi its yuli',3)
insert into Massages (Subject,Content,UserID) values ('massage to Simon','hi its yuli',3)
insert into Massages (Subject,Content,UserID) values ('massage to Rami','hi its yuli',3)
insert into Massages (Subject,Content,UserID) values ('massage to Shrek','hi its yuli',3)
insert into Massages (Subject,Content,UserID) values ('massage to Fyona','hi its yuli',3)

insert into Massages (Subject,Content,UserID) values ('massage to Yuval','hi its dvir',12)
insert into Massages (Subject,Content,UserID) values ('massage to Yuval2','hi its dvir',12)

insert into Massages (Subject,Content,UserID) values ('massage to Yuval','hi its Hen',1)
insert into Massages (Subject,Content,UserID) values ('massage to Yuval2','hi its Hen',1)
insert into Massages (Subject,Content,UserID) values ('massage to Yuval3','hi its Hen',1)

END

create table MassageToUsers
(
	UserID int references Users(UserID),
	MassageID int references Massages(MassageID),
	primary key (MassageID,UserID)
)

begin --MassagesToUsers INSERT DATA

insert into MassageToUsers (MassageID,UserID) values(1,2)

insert into MassageToUsers (MassageID,UserID) values(2,2)
insert into MassageToUsers (MassageID,UserID) values(2,3)
insert into MassageToUsers (MassageID,UserID) values(2,4)
insert into MassageToUsers (MassageID,UserID) values(2,5)
insert into MassageToUsers (MassageID,UserID) values(2,15)

insert into MassageToUsers (MassageID,UserID) values(3,3)

insert into MassageToUsers (MassageID,UserID) values(4,1)

insert into MassageToUsers (MassageID,UserID) values(5,7)

insert into MassageToUsers (MassageID,UserID) values(6,1)
insert into MassageToUsers (MassageID,UserID) values(6,10)
insert into MassageToUsers (MassageID,UserID) values(6,11)
insert into MassageToUsers (MassageID,UserID) values(6,12)

insert into MassageToUsers (MassageID,UserID) values(7,1)
insert into MassageToUsers (MassageID,UserID) values(8,2)
insert into MassageToUsers (MassageID,UserID) values(9,3)
insert into MassageToUsers (MassageID,UserID) values(10,4)
insert into MassageToUsers (MassageID,UserID) values(11,6)

insert into MassageToUsers (MassageID,UserID) values(12,1)
insert into MassageToUsers (MassageID,UserID) values(12,2)
insert into MassageToUsers (MassageID,UserID) values(12,30)
insert into MassageToUsers (MassageID,UserID) values(12,31)
insert into MassageToUsers (MassageID,UserID) values(12,32)

insert into MassageToUsers (MassageID,UserID) values(17,15)
insert into MassageToUsers (MassageID,UserID) values(18,15)
insert into MassageToUsers (MassageID,UserID) values(19,15)
insert into MassageToUsers (MassageID,UserID) values(20,15)
insert into MassageToUsers (MassageID,UserID) values(21,15)

END
select * from Massages

go
------------------------------------QUERIES--------------------------------------------


CREATE VIEW TwoDirectionFriendships AS( --please dont forget to Execute this VIEW
SELECT UserID1,UserID2
FROM Friendships
union
select UserID2,UserID1
from Friendships
)



--1 Show User’s News Feed -- the relevant posts and if it contain albums and pics - showing the albums and pics info
--the specific user is userID=1
with usersFriends as(
select UserID1 as UserID from TwoDirectionFriendships
where UserID2 = 1
)

select u.UserID,u.FirstName + ' ' + u.LastName as Name,p.PostID,Content,PostDate,a.AlbumID,a.AlbumName,pic.PictureID,pic.Name,pic.Url 
from usersFriends as uf join Posts as p on uf.UserID = p.UserID 
						join Users as u on p.UserID=u.UserID
						left join Albums as a on p.PostID=a.PostID
						left join Pictures as pic on p.PostID=pic.PostID AND a.AlbumID=pic.AlbumID
order by PostDate

--2 Show Users in my groups
--the specific user is userID=1
select gm.UserID,u.FirstName + ' '+ u.LastName as Name,count(*) as NumberOfCommonGroups
from GroupMembers as gm join Users as u on gm.UserID=u.UserID
where GroupID IN(select GroupID from GroupMembers where UserID=1) AND gm.UserID != 1
group by gm.UserID,u.FirstName,u.LastName
having count(*)>2

--3 What are the Highlight posts
with pl as
(select PostID,count(UserID) as NUmberOFLikes 
from PostLikes group by PostID)

select  p.PostID,NUmberOFLikes,Content,PostDate,UserID
from Posts as p join pl on p.PostID = pl.PostID
order by NUmberOFLikes DESC

--4 Users I may know
--the specific USERID is 3
with usersFriends as(
select UserID1 as UserID from TwoDirectionFriendships 
where UserID2=3 -- specific user -3
),
PotentialSuggestions as(
select UserID  from Users
where UserID NOT IN( -- the potentialsuggestion its the users that are not the specific user and not his friends
		select UserID from usersFriends
		union
		select UserID from Users
		where UserID=3 --including the specific user
)
),
commonFriends as( --users that not the specific user friend and they are friend with the user friends
select UserID1 as UserID from Friendships where UserID1 IN (select * from PotentialSuggestions) AND UserID2 IN(select * from usersFriends)
union all
select UserID2  from Friendships where UserID2 IN (select * from PotentialSuggestions) AND UserID1 IN(select * from usersFriends) 

)

select u.UserID,FirstName+ ' '+ LastName as NAME, numberOFCommonFriends from Users as u join (
								select UserID,count(*) as numberOFCommonFriends
								from commonFriends
								group by UserID
								having count(*)>3 --if they have more than 3 mutual friend it will apear in the people you may know suggestions
								) as UsersImayKnow on u.UserID = UsersImayKnow.UserID

-- 5 Best Friend

-----------------


with sumMsgsFromUsers as(--how much massages each user got from other user
select mtu.UserID as reciverID, m.UserID as SenderID ,count(*) as SumMassages
from Massages as m join MassageToUsers as mtu on m.MassageID = mtu.MassageID
group by mtu.UserID,m.UserID
),
Atleast5LikesRelationships as( --display relationships between friend only in term that the friend did at least 5 likes on the user's posts 
select f.UserID,f.FriendID,count(*) as SumLikesToPosts from(
			(select UserID1 as UserID,UserID2 as FriendID from Friendships 
		     union all --im doing union in order to see the 2 sides of the friendship. how much likes did each one in the friendship to the other friend
			 select UserID2,UserID1 from Friendships) as f join Posts as p on f.UserID = p.UserID
											               join PostLikes as pl on pl.PostID = p.PostID AND pl.UserID =f.FriendID
				   ) 
group by f.UserID,f.FriendID
having count(*)>4
),
sumMsgsFromUsersFiltered as( -- filerts sumMsgsFromUsers only if the sender is also liked at least 5 posts of the reciver
select reciverID,SenderID,SumMassages,SumlikesToPosts 
from sumMsgsFromUsers join Atleast5LikesRelationships as a5lr on sumMsgsFromUsers.reciverID = a5lr.UserID 
																	AND sumMsgsFromUsers.SenderID = a5lr.friendID
)

select sumMsgsFromUsersFiltered.reciverID as UserID, u.FirstName + ' ' + u.LastName as UserName , sumMsgsFromUsersFiltered.SenderID as BestFriendID , u2.FirstName + ' ' + u2.LastName as BestFriendName
from (
																	select reciverID,max(SumMassages) as MaxMassagesFromOneUser
																	from sumMsgsFromUsersFiltered
																	group by reciverID
																	) as ReciverIdandMaxMsges join sumMsgsFromUsersFiltered 
																	on ReciverIdandMaxMsges.reciverID = sumMsgsFromUsersFiltered.reciverID 
																	AND ReciverIdandMaxMsges.MaxMassagesFromOneUser = sumMsgsFromUsersFiltered.SumMassages																	
																	--joins to show users name , last name etc.
																	join Users as u on sumMsgsFromUsersFiltered.reciverID = u.UserID
																	join Users as u2 on sumMsgsFromUsersFiltered.SenderID = u2.UserID

---------------------------

--6 Display list of pictures which I am the only person who tagged on. 
with onePersonTagedPics as(
select PictureID
from Tags 
group by PictureID
having COUNT(UserID)=1
),
onePersonTagedPicsWithUserID as(
select * from tags 
where PictureID IN (select * from onePersonTagedPics)
)

select pic.PictureID,Name,p.UserID
from Pictures as pic join Posts as p on pic.PostID = p.PostID
					 join onePersonTagedPicsWithUserID as opt on opt.PictureID=pic.PictureID and opt.UserID = p.UserID
			
--7
with picsPerYear as(
select YEAR(PostDate) as Year,count(*) as PicsAmount 
from Pictures as pic join Posts as p on pic.PostID= p.PostID
group by Year(PostDate)	  
),
albumsPerYear as(
select YEAR(PostDate) as Year,count(*) as AlbumsAmount 
from Albums as a join Posts as p on a.PostID= p.PostID
group by Year(PostDate)
),
postsPerYear as(
select YEAR(PostDate) as Year,count(*) as PostsAmount 
from Posts
group by Year(PostDate)
)	  	  

select p.Year,p.PostsAmount,a.AlbumsAmount,pic.PicsAmount 
from postsPerYear as p FULL OUTER join albumsPerYear as a on p.Year=a.Year
					   FULL OUTER join picsPerYear as pic on a.Year=pic.Year

--8 We like our picture
--pics that have tag person that didnt like the pic:
with TaggedPicsWithNoLike as(
select t.PictureID as PicID
from Tags as t left join PicsLikes as p on t.PictureID = p.PictureID and t.UserID=p.UserID
where p.UserID is null
)

--now picking pics that have likes and tags from/of the same user but we will check its not from the pics that have tag person that didnt like the pic

select PicID,Name,Url,AlbumID,PostID from(
				select distinct t.PictureID as PicID
				from Tags as t join PicsLikes as p on t.PictureID = p.PictureID and t.UserID=p.UserID				
				where t.PictureID not in (select PicID from TaggedPicsWithNoLike)
		     ) as WeLikeOurPics join Pictures as p on WeLikeOurPics.PicID = p.PictureID

