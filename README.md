This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.


## command

docker-compose exec db bash

docker-compose logs -f  --timestamps flyway

## prismaコマンド(docker-compose exec web ${prisma command}):

前提: dockerの中で操作すること(docker-compose exec web)

### 開発環境でやること
0. `schema.prisma` ファイルでモデル定義を修正

1. `npx prisma db push`: schema.prismaの内容はdbに反映させる。しかしmigrationファイルは作られない

2. `npx prisma migrate reset`: 開発環境で動作確認して問題なければ、このコマンドでdb修正を解除する

3. `npx prisma migrate dev`: 上記確認して問題ない内容をprisma/migrationファイルで更新sqlを生成する

### 本番環境でやること
4. `npx prisma migrate deploy`: prisma/migrationファイルの中身を確認し、本番データベースのマイグレーションを実施する