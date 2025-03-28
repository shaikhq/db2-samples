--********************************************************************/
--                                                                   */
--    IBM InfoSphere Replication Server                              */
--    Version 11.4.0 for Linux, UNIX AND Windows                     */
--                                                                   */
--    Sample Q Replication migration script for UNIX AND NT          */
--    Licensed Materials - Property of IBM                           */
--                                                                   */
--    (C) Copyright IBM Corp. 2019. All Rights Reserved              */
--                                                                   */
--    US Government Users Restricted Rights - Use, duplication       */
--    or disclosure restricted by GSA ADP Schedule Contract          */
--    with IBM Corp.                                                 */
--                                                                   */
--********************************************************************/
-- File name: asnqappluwmssqlv1140fp.sql
--
-- Script to migrate Q Apply control tables from V11.5 to the latest
-- fixpack.
--
-- Prior to running this script, customize it to your existing
-- Q Apply server environment:
-- (1) Locate and change all occurrences of the string !server_name!
--     to the name of the federated SQL Server data source
-- (2) Locate and change all occurrences of the string !remote_schema!
--     to the name of owner of the SQL Server tables
-- (3) Locate and change all occurrences of the string !appschema!
--     to the name of the Q Apply schema applicable to your
--     environment
--
--********************************************************************/

UPDATE !APPSCHEMA!.IBMQREP_APPLYPARMS SET CONTROL_TABLES_LEVEL = '1140.106';
UPDATE !APPSCHEMA!.IBMQREP_APPLYPARMS SET CURRENT_LEVEL = '1140.106';

