CREATE TABLE IF NOT EXISTS Task
(
    id          BIGINT PRIMARY KEY,
    startDate   TIMESTAMP,
    endDate     TIMESTAMP,
    description VARCHAR(500),
    tags        VARCHAR(255),
    isRemoved   BOOLEAN DEFAULT FALSE,
    executorId  BIGINT,
    FOREIGN KEY (executorId) REFERENCES User (id)
);

CREATE TABLE IF NOT EXISTS File
(
    id        BIGINT PRIMARY KEY,
    taskId    BIGINT       NOT NULL,
    fileName  VARCHAR(255) NOT NULL,
    isRemoved BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (taskId) REFERENCES Task (id)
);

CREATE TABLE IF NOT EXISTS User
(
    id        BIGINT PRIMARY KEY,
    name      VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    isRemoved BOOLEAN   DEFAULT FALSE
);
