Quick tips:
In case there is problem with starting app, in Tools -> NuGetPackageManager -> Package Manager Console there should be done next line "Update-Package Microsoft.CodeDom.Providers.DotNetCompilerPlatform -r"
All sql things, including creating tables, stored procedures etc are placed in PartnersWebApp/Sql Skripta
In web.config there is fixed name for connection string which will app use so there could be need for a change of properties there, tag  <connectionStrings>

Application contains table with all partners, every row opens modal window, every person have their own form for entering policies and there is other site only for inserting new partner in database.
