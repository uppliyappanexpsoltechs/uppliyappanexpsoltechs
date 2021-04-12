-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2021 at 09:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xero_xpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `id_token` text DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `token_type` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `expires_at` text DEFAULT NULL,
  `session_state` text DEFAULT NULL,
  `activeTenant` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `id_token`, `access_token`, `token_type`, `refresh_token`, `scope`, `expires_at`, `session_state`, `activeTenant`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '$2b$08$3c1g6BsSRlesbKGdIIntQ.Obieu0rcEf.Z3kq8/MQUAtMI469cuJS', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjFDQUY4RTY2NzcyRDZEQzAyOEQ2NzI2RkQwMjYxNTgxNTcwRUZDMTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJISy1PWm5jdGJjQW8xbkp2MENZVmdWY09fQmsifQ.eyJuYmYiOjE2MTgyMTAwMzEsImV4cCI6MTYxODIxMDMzMSwiaXNzIjoiaHR0cHM6Ly9pZGVudGl0eS54ZXJvLmNvbSIsImF1ZCI6Ijg0NkI1RURDMjJEOTQwRjdBRkYwMDJDMkE2Rjk0QjEzIiwiaWF0IjoxNjE4MjEwMDMxLCJhdF9oYXNoIjoiYXAteVdpdmRZM193UGxmU0JPLVVHUSIsInNpZCI6IjA5ZDgyOGMwNWRjZjRlNTQ5N2IyODIyNjE1ZDE5M2M4Iiwic3ViIjoiNzllZTUzOWEyNzQ5NTU3MzgzYzM5NmYxM2YzMjA4ODAiLCJhdXRoX3RpbWUiOjE2MTgyMDk2MjgsInhlcm9fdXNlcmlkIjoiMTcyYWJkMmEtYWQzNy00MDIzLWEwOGMtYzZhYWNjZGI3ZDIzIiwiZ2xvYmFsX3Nlc3Npb25faWQiOiIwOWQ4MjhjMDVkY2Y0ZTU0OTdiMjgyMjYxNWQxOTNjOCIsInByZWZlcnJlZF91c2VybmFtZSI6InNhaWZ1ZGVlbkBleHBzb2x0ZWNocy5jb20iLCJlbWFpbCI6InNhaWZ1ZGVlbkBleHBzb2x0ZWNocy5jb20iLCJnaXZlbl9uYW1lIjoiM0NYIiwiZmFtaWx5X25hbWUiOiJYUE0ifQ.PRtRSuw6gHYvNlGW92U-ZZ7lXOkZIsVaXTyB4J7b5QP9-jJelJnpznsrXHEGl2zJRrgOejilpUC1thLrZ0uWfgysR5_LX6k5LIk-ipQyYodEgoblgTKBfyM0Ycdz0JA8UqwTEDqHLaqcgYkL2IILuPgsZ-vuOeifiBHsx_RwNZ7E6-y7slMc1VR7AnjUX2qcHzCu-KcwzM4XEKRTMhmRV_nVN9vwCT7TGZIua9KT6ehFsMDb8keT-4nwM-ybofiRIGkJHx1HUDs9ZJ3TmyAd_1xgp18aC9M8kuzJMXOJhOS4CgpeBAAzPV-G3RlnuaciLNcirX9ISBa1RHzrS8hNsA', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjFDQUY4RTY2NzcyRDZEQzAyOEQ2NzI2RkQwMjYxNTgxNTcwRUZDMTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJISy1PWm5jdGJjQW8xbkp2MENZVmdWY09fQmsifQ.eyJuYmYiOjE2MTgyMTAwMzEsImV4cCI6MTYxODIxMTgzMSwiaXNzIjoiaHR0cHM6Ly9pZGVudGl0eS54ZXJvLmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHkueGVyby5jb20vcmVzb3VyY2VzIiwiY2xpZW50X2lkIjoiODQ2QjVFREMyMkQ5NDBGN0FGRjAwMkMyQTZGOTRCMTMiLCJzdWIiOiI3OWVlNTM5YTI3NDk1NTczODNjMzk2ZjEzZjMyMDg4MCIsImF1dGhfdGltZSI6MTYxODIwOTYyOCwieGVyb191c2VyaWQiOiIxNzJhYmQyYS1hZDM3LTQwMjMtYTA4Yy1jNmFhY2NkYjdkMjMiLCJnbG9iYWxfc2Vzc2lvbl9pZCI6IjA5ZDgyOGMwNWRjZjRlNTQ5N2IyODIyNjE1ZDE5M2M4IiwianRpIjoiNGQ0Mjk4NWViNDhhZmU0ODAyMWI3YjMzMTAyOTU3YWUiLCJhdXRoZW50aWNhdGlvbl9ldmVudF9pZCI6IjFkNTk4NjVjLTljNzUtNGI1OC05YWU4LTEzZmU4ZGY2ZDc5OSIsInNjb3BlIjpbImVtYWlsIiwicHJvZmlsZSIsIm9wZW5pZCIsImFjY291bnRpbmcucmVwb3J0cy5yZWFkIiwiYWNjb3VudGluZy5hdHRhY2htZW50cy5yZWFkIiwiZmlsZXMiLCJwYXlyb2xsLmVtcGxveWVlcyIsInBheXJvbGwucGF5cnVucyIsInBheXJvbGwucGF5c2xpcCIsInBheXJvbGwudGltZXNoZWV0cyIsInByb2plY3RzLnJlYWQiLCJwcm9qZWN0cyIsImFjY291bnRpbmcuc2V0dGluZ3MiLCJhY2NvdW50aW5nLnNldHRpbmdzLnJlYWQiLCJhY2NvdW50aW5nLmF0dGFjaG1lbnRzIiwiZmlsZXMucmVhZCIsImFjY291bnRpbmcudHJhbnNhY3Rpb25zIiwiYWNjb3VudGluZy5qb3VybmFscy5yZWFkIiwiYWNjb3VudGluZy50cmFuc2FjdGlvbnMucmVhZCIsImFzc2V0cy5yZWFkIiwiYXNzZXRzIiwiYWNjb3VudGluZy5jb250YWN0cyIsImFjY291bnRpbmcuY29udGFjdHMucmVhZCIsInBheXJvbGwuc2V0dGluZ3MiLCJvZmZsaW5lX2FjY2VzcyJdfQ.EqOxC7a04h6kClmo3AHDzVawJA_sRjjMxz7Bq57nDoNBHg5HUxzcFaIumt14z3DT3DHxOBp1ZzmDgT3KOQ1MT3ZwF2naSh_aBxDhcm1U9UJBIB0zS0J2wrQ8etnASmCVyYXPAkGRwCoyOdJ97ZxzbFXhFnpkTgOCFTv0Ed8LzwUmmCLanC77tHaRcZTxi-fPgOpKDFct2pK0ZlYVQHruqhGBHWzbMDkbHrugcQE3UU3oUzDTxUBvAgOWSh-_J7cXyFkq_pNITAA9ZnBbgkmjy8zM9_NveHGTW7kxCyzXy87V_pYM98aOnb8251YReaDfpvj-ZLJfr9kEVbYEKXFZAg', 'Bearer', '2f72665da1aaa003e60c2886c64414bc2b79aed0adcb0886e582eb2c6c107aa8', 'openid profile email accounting.transactions accounting.transactions.read accounting.reports.read accounting.journals.read accounting.settings accounting.settings.read accounting.contacts accounting.contacts.read accounting.attachments accounting.attachments.read files files.read assets assets.read projects projects.read payroll.employees payroll.payruns payroll.payslip payroll.timesheets payroll.settings offline_access', '1618211831', 'cn0AUcMEKmMZjjyA8sWWVIOmY5d2mKZAbshOuL_S_wk.2aaeb9adc52a0c3abf7517c778ea59f5', '{\"id\":\"57d66996-dc54-4020-a358-1cd6e68482e9\",\"authEventId\":\"1d59865c-9c75-4b58-9ae8-13fe8df6d799\",\"tenantId\":\"a23dd923-2b8d-4445-88a3-4e7f2b66d4e4\",\"tenantType\":\"ORGANISATION\",\"tenantName\":\"3cx\",\"createdDateUtc\":\"2021-04-12T06:47:05.5191770\",\"updatedDateUtc\":\"2021-04-12T06:47:05.5213030\"}', NULL, '2021-04-12 06:47:21'),
(2, 'test', '$2b$08$3c1g6BsSRlesbKGdIIntQ.Obieu0rcEf.Z3kq8/MQUAtMI469cuJS', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjFDQUY4RTY2NzcyRDZEQzAyOEQ2NzI2RkQwMjYxNTgxNTcwRUZDMTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJISy1PWm5jdGJjQW8xbkp2MENZVmdWY09fQmsifQ.eyJuYmYiOjE2MTcwMTU4NjAsImV4cCI6MTYxNzAxNjE2MCwiaXNzIjoiaHR0cHM6Ly9pZGVudGl0eS54ZXJvLmNvbSIsImF1ZCI6Ijg0NkI1RURDMjJEOTQwRjdBRkYwMDJDMkE2Rjk0QjEzIiwiaWF0IjoxNjE3MDE1ODYwLCJhdF9oYXNoIjoiX2lTSXA5SDNOTkhfc2puUkpNN1QxUSIsInNpZCI6ImE3ZmYzZTNiZGFiYjQ4NGVhNmM5YTUxNjA0ZjZjOWVhIiwic3ViIjoiZGYwNDNkZWY2MjgxNTdhZmJiOTgwYjMwMWVmM2MwZGEiLCJhdXRoX3RpbWUiOjE2MTcwMTU2MjMsInhlcm9fdXNlcmlkIjoiZDJlNGQwNGUtYWU0OS00YTI4LTg0OWItZjBmYmYyZjVlNjIxIiwiZ2xvYmFsX3Nlc3Npb25faWQiOiJhN2ZmM2UzYmRhYmI0ODRlYTZjOWE1MTYwNGY2YzllYSIsInByZWZlcnJlZF91c2VybmFtZSI6InVwcGxpeWFwcGFuQGV4cHNvbHRlY2hzLmNvbSIsImVtYWlsIjoidXBwbGl5YXBwYW5AZXhwc29sdGVjaHMuY29tIiwiZ2l2ZW5fbmFtZSI6IlVwcGxpIiwiZmFtaWx5X25hbWUiOiJNY2EifQ.sLmQmZjS2Nc9aUa0oy5jpWxve_RmfNr9pTUH5mJqoJUw_PFlB2dMNYfAz0SXNxIt6nlMWZ85rIWp1d85iFiT6dKUj-s-uDZntO_MzLESzoWnomkSfRMrWmerSLZz7ug6hZuXdrtFTkn2WjYUQLK81U_d3bLv8c42DkvR5ol9PN9v2RbFKRDJGjvdBZZaK-BcFM-NiFeEjzaI6kjhH2-RkY-cq9WTk_9dzIozF429krYLGNQ3mx7Z5KkMb04-3gWAhwxbkfnHXIUu-GzeMrJTUPYIMNqr3wy8ToPNuDj2l7Socsv-f4RLKCDR-dFmrzJGMM5AFe_07pMj8UbaHUzkiA', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjFDQUY4RTY2NzcyRDZEQzAyOEQ2NzI2RkQwMjYxNTgxNTcwRUZDMTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJISy1PWm5jdGJjQW8xbkp2MENZVmdWY09fQmsifQ.eyJuYmYiOjE2MTcwMTU4NjAsImV4cCI6MTYxNzAxNzY2MCwiaXNzIjoiaHR0cHM6Ly9pZGVudGl0eS54ZXJvLmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHkueGVyby5jb20vcmVzb3VyY2VzIiwiY2xpZW50X2lkIjoiODQ2QjVFREMyMkQ5NDBGN0FGRjAwMkMyQTZGOTRCMTMiLCJzdWIiOiJkZjA0M2RlZjYyODE1N2FmYmI5ODBiMzAxZWYzYzBkYSIsImF1dGhfdGltZSI6MTYxNzAxNTYyMywieGVyb191c2VyaWQiOiJkMmU0ZDA0ZS1hZTQ5LTRhMjgtODQ5Yi1mMGZiZjJmNWU2MjEiLCJnbG9iYWxfc2Vzc2lvbl9pZCI6ImE3ZmYzZTNiZGFiYjQ4NGVhNmM5YTUxNjA0ZjZjOWVhIiwianRpIjoiYzI2MjBhZDdkMDVhYjcwZTRlMjBmOTNmNGI0ZDNmOGQiLCJhdXRoZW50aWNhdGlvbl9ldmVudF9pZCI6IjRmYWRjODE3LWI2MmEtNGMwMC1iNDEyLTA5M2QxMTFiNWZiMSIsInNjb3BlIjpbImVtYWlsIiwicHJvZmlsZSIsIm9wZW5pZCIsImFjY291bnRpbmcucmVwb3J0cy5yZWFkIiwiYWNjb3VudGluZy5hdHRhY2htZW50cy5yZWFkIiwiZmlsZXMiLCJwYXlyb2xsLmVtcGxveWVlcyIsInBheXJvbGwucGF5cnVucyIsInBheXJvbGwucGF5c2xpcCIsInBheXJvbGwudGltZXNoZWV0cyIsInByb2plY3RzLnJlYWQiLCJwcm9qZWN0cyIsImFjY291bnRpbmcuc2V0dGluZ3MiLCJhY2NvdW50aW5nLnNldHRpbmdzLnJlYWQiLCJhY2NvdW50aW5nLmF0dGFjaG1lbnRzIiwiZmlsZXMucmVhZCIsImFjY291bnRpbmcudHJhbnNhY3Rpb25zIiwiYWNjb3VudGluZy5qb3VybmFscy5yZWFkIiwiYWNjb3VudGluZy50cmFuc2FjdGlvbnMucmVhZCIsImFzc2V0cy5yZWFkIiwiYXNzZXRzIiwiYWNjb3VudGluZy5jb250YWN0cyIsImFjY291bnRpbmcuY29udGFjdHMucmVhZCIsInBheXJvbGwuc2V0dGluZ3MiLCJvZmZsaW5lX2FjY2VzcyJdfQ.xmhxRIezRpTpaaoyXWGdpu8iNH4yyToM3k856Z8hl1_ob_pcX8m66sSAZ2i9tlG3Jia6d7TMcIMOzYHRaPw5mABBa5Qx4LN8AkLrvoTe4S0VxgMrhPKhPY9U4pLQaX5pAO93-AS9CKVmXKXa1EZ4eY1ZMjDSHHdkmjvWOUDZQ385vI4gm7XYtcweJUSjaMzh0l-Bo_JO1yM8siv96AW0gx2UdrpLbkmUlBAjobOueiVNH9hPt2CE7KC7hRkeMSL5eyNHAfWUe9Uq1k9S6mpOzrysGsEgwhVsCSX6CvgU7v82sJnZetZW5Aw4fnA_T25GjpiZTHpQ9FKgOOnzOuHnrA', 'Bearer', '4c7eb010e9421eecd738108210a3bc30b277f9784360bc0587ec1e16f795d35b', 'openid profile email accounting.transactions accounting.transactions.read accounting.reports.read accounting.journals.read accounting.settings accounting.settings.read accounting.contacts accounting.contacts.read accounting.attachments accounting.attachments.read files files.read assets assets.read projects projects.read payroll.employees payroll.payruns payroll.payslip payroll.timesheets payroll.settings offline_access', '1617017660', 'PjZKtWl7XN3QWguYM61ARj4d9rIefSDLE9L1nafqt_w.17e05c6cca7ea1899e6be22437abccfd', '{\"id\":\"3c47ca34-a1bb-45de-8ccc-179a5e5c36af\",\"authEventId\":\"b4868299-3e5e-435a-bba9-f1a3ac5c3c59\",\"tenantId\":\"9416297d-d63e-44ec-9292-0ec188f2e8da\",\"tenantType\":\"ORGANISATION\",\"tenantName\":\"Est\",\"createdDateUtc\":\"2021-03-11T10:17:08.0280510\",\"updatedDateUtc\":\"2021-03-11T10:17:08.0296860\"}', '2021-03-18 01:07:51', '2021-03-29 11:04:25'),
(3, 'terminator', '$2b$08$ST0pGnObnniBOIuLkfRKk.jD7zwqD23g7GXAEuLDlM0s3gEMK1RYe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 09:31:21', '2021-03-25 09:31:21'),
(4, 'terminator1', '$2b$08$vHyVzcvngUbzGNA9N.QfRe7UlptGNIMwrzx0WM2O.vEWHCsygkPqC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 10:04:59', '2021-03-25 10:04:59'),
(5, 'asdf', '$2b$08$1D5ILlp5Yz0FTd/cIplb4e9z9WYrS6i5GP2553rSPtkUe5314PeF6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 10:24:37', '2021-03-25 10:24:37'),
(6, 'sda', '$2b$08$cNFFNBe8Xx4XlUz44AxbkuswHtyiHOZS5giWNUSp16ahSASdGBm/O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 10:25:48', '2021-03-25 10:25:48'),
(7, 'asdfff', '$2b$08$/pYRpOqxanTvUV1kjBKRVeutp19E9pF9laX5Rx7KxeTlyHVdTr1Km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 10:29:36', '2021-03-25 10:29:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
