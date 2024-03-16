This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

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

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.


To build the next.js app following the below github Commands 

git init

git branch -m main

#used to install next.js application 
1.npx create-next-app@latest Myapp
2.npm run dev 

#configure the name and email
3.git config --global user.name "ayushi"
4.git config --global user.email "tiwariayushi04@gmail.com"

#adding all the created files in git environment
5.git add.
6.git commit -m "first commit"
7.git remote add origin https://github.com/AYUSHITIWARI12/myappp.git

# now create an github workflow named as myapp.yml and push the code into github account
8.git push -u origin main

After the first commit the myapp.yml will start running 


9.Inside the code base uh in root directory of create repository and create a new folder and this folder .github/workflows
10.The github will understand that repository has some workflows in it,the ci cd background is available in repository ,create this folder workflow and inside this folder create myapp.yml file
11.Now will create another apppipleline and then the next one is an event like what event we want our pipeline to be run 
event that is a push event means if somebody pushes our code in any branches for this one i will use the main branch.

name: appPipeline

on:
  push:
    branches: [main]

12.Main branch this app pipeline will start running 
13.Now add a job here which is lint test to linting of the whole overall project ,now the next one is run song so the run sound is basically the platform you
want your um pipeline to be run,can be and vm where it can be a dropper

14. Now craete container or anything like will use ubuntu for this one so you can use up one to any version will going to use latest
jobs: 
  lintTest:
    name: Lint
    runs-on: ubuntu-latest
    steps:

15.now the next one is steps  run this script as soon as the code gets pushed into this ubuntu latest.clone repository so this will basically clone the repository in our runner which is the ubuntu latest.
 - name: Clone Repository
        uses: actions/checkout@v2
      - name: Install Dependencies
        run: |
          echo "Running Installing Dependencies..."
          npm install 
      - name: Run Linting
        run: |
          echo "Running Linting test..."
          npm run lint
        env:
          CI: true

   16.now create the security Job name , once the security check to be completed then the test and security check will runs.
   securityCheck:
    name: Security Check 
    runs-on: ubuntu-latest
    steps:
      - name: Check for Security
        run: |
           echo "Running Security Checks.."
           sleep 5s;
           echo "Running Security Checks.. 1"
           sleep 5s;
           echo "Running Security Checks.. 2"
           sleep 5s;
           echo "Running Security Checks.. 3"
           sleep 5s;
   17.By adding the deploymenet job now this we can able install any dependencies again will push the code to github and commit the chnagessee it's adding the deployment once the deployment is ready, on eslint add a rule to throw an error and in our index.js
18.file imported a variable function from next router,security check will be passed, so this is how we have multiple test

deploy:
        name: Deployement
        runs-on: ubuntu-latest
        needs: [lintTest, securityCheck]
        steps:
          - name: Install Dependecies
            run: |
                echo "Deployment in progress.."
                sleep 5s;
19 Once the jobs in ci cd pipelines sucessfully runs,add a deployment phase where after that
20 .after all the tests sucessfully passed ,just push the code to the um production url.













To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
