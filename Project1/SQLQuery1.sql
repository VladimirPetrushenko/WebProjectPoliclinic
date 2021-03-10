delete from Qualification;


insert into Qualification(Qualification) values (N'Высшея категория');
insert into Qualification(Qualification) values (N'Первая категория');
insert into Qualification(Qualification) values (N'Вторая категория');


delete from Specialization;


insert into Specialization(Specialization) values (N'Гениколог');
insert into Specialization(Specialization) values (N'Терапевт');
insert into Specialization(Specialization) values (N'Хирург');
insert into Specialization(Specialization) values (N'ЛОР');
insert into Specialization(Specialization) values (N'Невролог');
insert into Specialization(Specialization) values (N'Окулист');
insert into Specialization(Specialization) values (N'Уролог');
insert into Specialization(Specialization) values (N'Травмотолог');
insert into Specialization(Specialization) values (N'Лаборант');




insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (25, N'Анастасия', N'Комлик', N'ул. Сорокина 14, кв 13', N'+375331547544', 9, 11);
insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (35, N'Виктория', N'Целис', N'ул. Советская 28, кв 26', N'+375331548851', 8, 12);
insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (37, N'Антон', N'Мартыной', N'ул. Кирова 9, кв 98', N'+375336598742', 8, 12);
insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (30, N'Владимир', N'Сирголушко', N'ул. Фрунзе 103, кв 8', N'+375295575628', 9, 10);
insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (50, N'Василий', N'Шмарков', N'ул. 50 лет БССР 58, кв 65', N'+375293754898', 7, 14);
insert into Doctor(Age, FirstName, LastName, [Address], Phone, idQualification, idSpecialization) 
values (40, N'Артём', N'Варкольков', N'ул. Кастрычная 63, кв 74', N'+375335896845', 9, 15);


insert into Diagnosis(CodeMRB_10, Diagnosis) values ('A00',N'Холера');
insert into Diagnosis(CodeMRB_10, Diagnosis) values ('B00',N'Доброкачественная опухоль');
insert into Diagnosis(CodeMRB_10, Diagnosis) values ('C00',N'Злокачественная опухоль');
insert into Diagnosis(CodeMRB_10, Diagnosis) values ('D00',N'Туберкулёз');
insert into Diagnosis(CodeMRB_10, Diagnosis) values ('H00',N'Вирусные заболевание');
insert into Diagnosis(CodeMRB_10, Diagnosis) values ('J00',N'Сердечные заболевания');


insert into Patient(Age, FirstName, LastName, [Address]) 
values (25, N'Виктор', N'Комрад', N'ул. Советская 22, кв 3');
insert into Patient(Age, FirstName, LastName, [Address], Passport) 
values (40, N'Василий', N'Комаров', N'ул. Кирова 13, кв 22', N'BM5857436');
insert into Patient(FirstName, LastName, [Address], Phone, Passport) 
values (N'Игорь', N'Кольцевой', N'ул. Фрунзе 22, кв 58',N'+375336587524', N'BM8542896');
insert into Patient(Age, FirstName, LastName, [Address], Passport) 
values (35, N'Анастосия', N'Комрад', N'ул. Советская 22, кв 3', N'KC3541285');
insert into Patient(Age, FirstName, LastName, [Address], Passport, Phone) 
values (40, N'Василий', N'Комаров', N'ул. Кирова 13, кв 22', N'BM5857436', N'+375295656478');

insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol,Conclusion, idDiagnosis,Recomendatein) 
values (1,1,cast('07-15-18 16:30' AS datetime),N'Провели иследования крови',N'Получили холеру по анализам',1,N'Нервничать не нужно, потому что это тестирование')
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol,Conclusion, idDiagnosis,Recomendatein) 
values (2,1,cast('01-12-16 12:32' AS datetime),N'Провели иследования крови',N'Получили добракачественную опухоль на основе УЗИ',2,N'Нервничать не нужно, потому что это тестирование')
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol,Conclusion, idDiagnosis,Recomendatein) 
values (3,1,cast('01-18-18 14:40' AS datetime),N'Провели иследования крови',N'Получили злокачественную опухоль на основе УЗИ',3,N'Нервничать не нужно, потому что это тестирование')
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol,Conclusion, idDiagnosis) 
values (1,2,cast('01-30-18 12:00' AS datetime),N'Провели иследования крови',N'Получили холеру по анализам',1)
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol, idDiagnosis,Recomendatein) 
values (1,3,cast('10-25-20 06:35' AS datetime),N'Провели иследования крови',1,N'Нервничать не нужно, потому что это тестирование')
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, Conclusion, idDiagnosis,Recomendatein) 
values (1,4,cast('08-06-19 08:52' AS datetime),N'Получили холеру по анализам',1,N'Нервничать не нужно, потому что это тестирование')
insert into MedicalCard(idPatient, idDoctor, DateOfVisit, ReaseachProtacol,Conclusion, idDiagnosis,Recomendatein) 
values (4,4,cast('11-02-20 15:15' AS datetime),N'Провели иследования крови',N'Получили холеру по анализам',1,N'Нервничать не нужно, потому что это тестирование')



