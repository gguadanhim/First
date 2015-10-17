
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/12/2015 18:58:28
-- Generated from EDMX file: C:\Users\gguad\Documents\GitHub\First\First\First\Modelo_dados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [db47dd9aa90e564d5682c7a4fc016bd255];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_JogadorAmigos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmigosSet] DROP CONSTRAINT [FK_JogadorAmigos];
GO
IF OBJECT_ID(N'[dbo].[FK_CampoPosicao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PosicaoSet] DROP CONSTRAINT [FK_CampoPosicao];
GO
IF OBJECT_ID(N'[dbo].[FK_JogadorAmigos1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmigosSet] DROP CONSTRAINT [FK_JogadorAmigos1];
GO
IF OBJECT_ID(N'[dbo].[FK_JogadorJogadorPosicao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JogadorPosicaoSet] DROP CONSTRAINT [FK_JogadorJogadorPosicao];
GO
IF OBJECT_ID(N'[dbo].[FK_PosicaoJogadorPosicao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JogadorPosicaoSet] DROP CONSTRAINT [FK_PosicaoJogadorPosicao];
GO
IF OBJECT_ID(N'[dbo].[FK_CampoTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TimeSet] DROP CONSTRAINT [FK_CampoTime];
GO
IF OBJECT_ID(N'[dbo].[FK_JogadorTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TimeSet] DROP CONSTRAINT [FK_JogadorTime];
GO
IF OBJECT_ID(N'[dbo].[FK_TimeJogadoresTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JogadoresTimeSet] DROP CONSTRAINT [FK_TimeJogadoresTime];
GO
IF OBJECT_ID(N'[dbo].[FK_JogadorJogadoresTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JogadoresTimeSet] DROP CONSTRAINT [FK_JogadorJogadoresTime];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[JogadorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JogadorSet];
GO
IF OBJECT_ID(N'[dbo].[AmigosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AmigosSet];
GO
IF OBJECT_ID(N'[dbo].[CampoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CampoSet];
GO
IF OBJECT_ID(N'[dbo].[PosicaoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PosicaoSet];
GO
IF OBJECT_ID(N'[dbo].[JogadorPosicaoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JogadorPosicaoSet];
GO
IF OBJECT_ID(N'[dbo].[TimeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TimeSet];
GO
IF OBJECT_ID(N'[dbo].[JogadoresTimeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JogadoresTimeSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JogadorSet'
CREATE TABLE [dbo].[JogadorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AmigosSet'
CREATE TABLE [dbo].[AmigosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JogadorId] int  NOT NULL,
    [AmigoId] int  NOT NULL
);
GO

-- Creating table 'CampoSet'
CREATE TABLE [dbo].[CampoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PosicaoSet'
CREATE TABLE [dbo].[PosicaoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [CampoId] int  NOT NULL
);
GO

-- Creating table 'JogadorPosicaoSet'
CREATE TABLE [dbo].[JogadorPosicaoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JogadorId] int  NOT NULL,
    [PosicaoId] int  NOT NULL
);
GO

-- Creating table 'TimeSet'
CREATE TABLE [dbo].[TimeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [CampoId] int  NOT NULL,
    [Jogador_proprietarioId] int  NOT NULL
);
GO

-- Creating table 'JogadoresTimeSet'
CREATE TABLE [dbo].[JogadoresTimeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TimeId] int  NOT NULL,
    [JogadorId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'JogadorSet'
ALTER TABLE [dbo].[JogadorSet]
ADD CONSTRAINT [PK_JogadorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [JogadorId] in table 'AmigosSet'
ALTER TABLE [dbo].[AmigosSet]
ADD CONSTRAINT [PK_AmigosSet]
    PRIMARY KEY CLUSTERED ([Id], [JogadorId] ASC);
GO

-- Creating primary key on [Id] in table 'CampoSet'
ALTER TABLE [dbo].[CampoSet]
ADD CONSTRAINT [PK_CampoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PosicaoSet'
ALTER TABLE [dbo].[PosicaoSet]
ADD CONSTRAINT [PK_PosicaoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogadorPosicaoSet'
ALTER TABLE [dbo].[JogadorPosicaoSet]
ADD CONSTRAINT [PK_JogadorPosicaoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TimeSet'
ALTER TABLE [dbo].[TimeSet]
ADD CONSTRAINT [PK_TimeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogadoresTimeSet'
ALTER TABLE [dbo].[JogadoresTimeSet]
ADD CONSTRAINT [PK_JogadoresTimeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [JogadorId] in table 'AmigosSet'
ALTER TABLE [dbo].[AmigosSet]
ADD CONSTRAINT [FK_JogadorAmigos]
    FOREIGN KEY ([JogadorId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorAmigos'
CREATE INDEX [IX_FK_JogadorAmigos]
ON [dbo].[AmigosSet]
    ([JogadorId]);
GO

-- Creating foreign key on [CampoId] in table 'PosicaoSet'
ALTER TABLE [dbo].[PosicaoSet]
ADD CONSTRAINT [FK_CampoPosicao]
    FOREIGN KEY ([CampoId])
    REFERENCES [dbo].[CampoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CampoPosicao'
CREATE INDEX [IX_FK_CampoPosicao]
ON [dbo].[PosicaoSet]
    ([CampoId]);
GO

-- Creating foreign key on [AmigoId] in table 'AmigosSet'
ALTER TABLE [dbo].[AmigosSet]
ADD CONSTRAINT [FK_JogadorAmigos1]
    FOREIGN KEY ([AmigoId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorAmigos1'
CREATE INDEX [IX_FK_JogadorAmigos1]
ON [dbo].[AmigosSet]
    ([AmigoId]);
GO

-- Creating foreign key on [JogadorId] in table 'JogadorPosicaoSet'
ALTER TABLE [dbo].[JogadorPosicaoSet]
ADD CONSTRAINT [FK_JogadorJogadorPosicao]
    FOREIGN KEY ([JogadorId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorJogadorPosicao'
CREATE INDEX [IX_FK_JogadorJogadorPosicao]
ON [dbo].[JogadorPosicaoSet]
    ([JogadorId]);
GO

-- Creating foreign key on [PosicaoId] in table 'JogadorPosicaoSet'
ALTER TABLE [dbo].[JogadorPosicaoSet]
ADD CONSTRAINT [FK_PosicaoJogadorPosicao]
    FOREIGN KEY ([PosicaoId])
    REFERENCES [dbo].[PosicaoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PosicaoJogadorPosicao'
CREATE INDEX [IX_FK_PosicaoJogadorPosicao]
ON [dbo].[JogadorPosicaoSet]
    ([PosicaoId]);
GO

-- Creating foreign key on [CampoId] in table 'TimeSet'
ALTER TABLE [dbo].[TimeSet]
ADD CONSTRAINT [FK_CampoTime]
    FOREIGN KEY ([CampoId])
    REFERENCES [dbo].[CampoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CampoTime'
CREATE INDEX [IX_FK_CampoTime]
ON [dbo].[TimeSet]
    ([CampoId]);
GO

-- Creating foreign key on [Jogador_proprietarioId] in table 'TimeSet'
ALTER TABLE [dbo].[TimeSet]
ADD CONSTRAINT [FK_JogadorTime]
    FOREIGN KEY ([Jogador_proprietarioId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorTime'
CREATE INDEX [IX_FK_JogadorTime]
ON [dbo].[TimeSet]
    ([Jogador_proprietarioId]);
GO

-- Creating foreign key on [TimeId] in table 'JogadoresTimeSet'
ALTER TABLE [dbo].[JogadoresTimeSet]
ADD CONSTRAINT [FK_TimeJogadoresTime]
    FOREIGN KEY ([TimeId])
    REFERENCES [dbo].[TimeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TimeJogadoresTime'
CREATE INDEX [IX_FK_TimeJogadoresTime]
ON [dbo].[JogadoresTimeSet]
    ([TimeId]);
GO

-- Creating foreign key on [JogadorId] in table 'JogadoresTimeSet'
ALTER TABLE [dbo].[JogadoresTimeSet]
ADD CONSTRAINT [FK_JogadorJogadoresTime]
    FOREIGN KEY ([JogadorId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorJogadoresTime'
CREATE INDEX [IX_FK_JogadorJogadoresTime]
ON [dbo].[JogadoresTimeSet]
    ([JogadorId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------