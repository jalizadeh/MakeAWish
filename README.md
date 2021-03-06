# Make A Wish
This is a simple web-app to use the stuff I learned and demonstrate via a real project.

## [Idea](#)
This web-app will provide a service for anyone who has a wish, but doesn't know how to make it true, or doesn't have the resources. On the other side, anyone who knows how or have the resources, can help the people, who shared their wishes.



## [STEPS](#)
I try to explain as much as I can, that's why you will find this document so long 😁\
To be honest, the reason is, to make this project a fully self-descriptive for anyone, at any time, specially me 😉😎

> I will order the steps at the end of any phase


### STEP #: Creating a DataSource on the Glassfish server
- #1: `GlassFish Server Administration Console` -> `localhost:4848`

- #2: `Resources` -> `JDBC` -> `JDBC Connection Pools` : `New`
	- Pool Name: `MAWDB`
	- Resource Type: `javax.sql.DataSource`
	- Database Driver Vendor: `Derby`
	- [ ] Introspect (leave it unchecked)

- #3: `Next`
	- In `Additional Properties` table:
		- Select and delete these from the table
			1. "RetrieveMessageText"
			2. "ShutdownDatabase"
			3. "CreateDatabase"
			4. "SSL"
			5. "TraceFile"
			6. "DataSourceName"
			7. "TraceDirectory"
			8. "SecurityMechanism"
			9. "TraceLevel"
			10. "TraceFileAppend"
			11. "LoginTimeout"
		- User: `MAW`
		- DatabseName: `mawdb`
		- Description: `DB of MakeAWish application`
		- Password: `MAW`
		- PortNumber: `1527` (according to DB server)
		- ConnectionAttributes: `;create=true`

- #4: `Finish`

- #5: `Resources` -> `JDBC` -> `JDBC Connection Pools` -> `MAWDB` : `General`
	- `Ping` to test if everything is fine

- #6: `Resources` -> `JDBC` -> `JDBC Resources` : `New`
	- JNDI Name: `jdbc/airline`
	- Pool Name: `MAWDB`

- #7: `OK`


### STEP #: Connecting to the database with Eclipse
- Driver: `Derby Client JDBC Driver`  ([check notes here](https://github.com/jalizadeh/Airline#jpa-0-connecting-to-the-database-with-eclipse))
- Database: `mawdb`
- Host: `localhost`
- Port number: `1527` 
- User name: `MAW`
- Password: `MAW`
- [x] Create database (if required)
- [x] Save password
- URL: `jdbc:derby://localhost:1527/mawdb;create=true`


### STEP #: Modify `persistance.xml`
- In `persistance.xml`, I change the name to `<persistence-unit name="mawdb">`, like the DB's name. Easier to understand
- Add `properties`, otherwise there will be `Transaction` error

```xml
<?xml version="1.0" encoding="UTF-8"?>
<persistence version="2.1" 
	xmlns="http://xmlns.jcp.org/xml/ns/persistence" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/persistence http://xmlns.jcp.org/xml/ns/persistence/persistence_2_1.xsd">
	
	<persistence-unit name="mawdb">
		<jta-data-source>jdbc/mawdb</jta-data-source>
		<class>com.makeawish.models.Users</class>
	
	<properties>
		<property name="eclipselink.ddl-generation" value="drop-and-create-tables"/>
	</properties>
	</persistence-unit>
</persistence>

```


### STEP #: Modify context root
- `Propertise` > `Web Project Settings` > `Context Root` : `maw`

	Now, the root address is changed to `http://localhost:8080/maw/`, easier to access


### STEP #: Creating User-realted classes
- `com.makeawish.models.Users` > JPA Entity
	- The information about a user
	- NOTE: `User` is a built-in table, so it can not be used 😒

- `com.makeawish.services.UserService` > Session Bean (EJB 3.x)
	- CRUD methods


### STEP #: UI Design
- I used Adobe XD


### STEP #: Diagram
- How the pages are connected
- What happens in each page
- I used [draw.io](https://www.draw.io/)





## [Technologies](#)
- Eclipse IDE
- Java 1.8
- GlassFish5
- Apche Derby DB [is included in GlassFish5]