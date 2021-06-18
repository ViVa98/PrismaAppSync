# PrismaAppSync

Steps to follow before deploying
---------------------------

- `yarn` Install node_modules

- Add postgres connection url in .env file

- `npx prisma migrate`

- `cd cdk`

- `yarn` Install node_modules

- Again add the postgres connection url in .env file in cdk folder

- `cdk bootstrap`if required

- `cdk deploy`