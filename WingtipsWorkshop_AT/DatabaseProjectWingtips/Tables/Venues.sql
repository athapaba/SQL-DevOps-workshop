CREATE TABLE [dbo].[Venues] (
    [VenueId]       INT            NOT NULL,
    [VenueName]     NVARCHAR (50)  NOT NULL,
    [VenueType]     NVARCHAR (30)  NOT NULL,
    [AdminEmail]    NVARCHAR (128) NOT NULL,
    [AdminPassword] NVARCHAR (30)  NULL,
    [PostalCode]    NVARCHAR (20)  NULL,
    [CountryCode]   CHAR (3)       NOT NULL,
    [RowVersion]    ROWVERSION     NOT NULL,
    CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED ([VenueId] ASC),
    CONSTRAINT [FK_Venues_Countries] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Countries] ([CountryCode]),
    CONSTRAINT [FK_Venues_VenueTypes] FOREIGN KEY ([VenueType]) REFERENCES [dbo].[VenueTypes] ([VenueType])
);


GO

