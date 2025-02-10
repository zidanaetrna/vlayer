Here’s a **detailed tutorial** on deploying and running **vlayer** interactively. This guide will help you step by step.

---

# **🚀 vlayer Deployment and Setup Guide**

## **🔹  First Steps: Deploy with vlayer**
### **Step 1: Initialize a New Project**
To create a new vlayer project, use:
```bash
vlayer init project-name
```
Replace `project-name` with your desired project name.

### **Step 2: Add vlayer to an Existing Project**
If you already have a project, navigate to its folder and initialize vlayer:
```bash
cd ./your-project-name
vlayer init --existing
```
This will integrate vlayer into your existing project.

### **Step 3: Start with a Sample Project**
If you want to start with a **pre-configured** example, use:
```bash
vlayer init simple --template simple
```
This will create a **basic vlayer project** to explore.

---

## **🔹  Running the Sample Locally**
Make sure **Bun** is installed before proceeding.

### **Step 1: Compile Smart Contracts**
Navigate to your project folder and run:
```bash
cd your-project-name
forge build
```
This will **compile the smart contracts** and prepare them for deployment/testing.

### **Step 2: Install TypeScript Dependencies**
Inside the vlayer folder, install dependencies using Bun:
```bash
cd vlayer
bun install
```

### **Step 3: Launch a Local Ethereum Node**
To deploy and test contracts locally, start **anvil**, an Ethereum test node:
```bash
anvil
```

This command should keep running in a separate terminal.

### **Step 4: Start the Prover Server**
Open a **new terminal** session and run:
```bash
vlayer serve
```

### **Step 5: Configure RPC URLs**
To use **different blockchain networks**, use the following command:
```bash
vlayer serve \
  --rpc-url '31337:http://localhost:8545' \
  --rpc-url '11155111:https://eth-sepolia.g.alchemy.com/v2/{ALCHEMY_KEY}' \
  --rpc-url '1:https://eth-mainnet.g.alchemy.com/v2/{ALCHEMY_KEY}' \
  --rpc-url '8453:https://base-mainnet.g.alchemy.com/v2/{ALCHEMY_KEY}' \
  --rpc-url '10:https://opt-mainnet.g.alchemy.com/v2/{ALCHEMY_KEY}'
```
Replace `{ALCHEMY_KEY}` with your **Alchemy API key**, which you can generate at [Alchemy Dashboard](https://dashboard.alchemy.com/).  
Alternatively, you can find public RPCs at [Chainlist](https://chainlist.org/).

### **Step 6: Run an Example Proof**
To test a proof inside the vlayer directory, execute:
```bash
bun run prove.ts
```

---

## **🔹  Web Proof Sample**
### **Step 1: Install vlayer Browser Extension**
To interact with proofs via a web interface, install the **vlayer Chrome extension**:  
🔗 [**vlayer Chrome Extension**](https://chromewebstore.google.com/detail/vlayer/jbchhcgphfokabmfacnkafoeeeppjmpl)

### **Step 2: Deploy Web Proof Smart Contracts**
Deploy the **WebProofProver** and **WebProofVerifier** contracts on the local **anvil** testnet:
```bash
cd vlayer
bun run deploy.ts
```

### **Step 3: Start the Web App Locally**
Launch the web app using:
```bash
cd vlayer
bun run dev
```
Once the server starts, open your browser and go to:  
🔗 **http://localhost:5174**  
Here, you will see buttons to interact with the vlayer server.  
(💡 **Tip**: Open the browser developer console to monitor activity.)

---

## **🔹 Troubleshooting**
### **If you get a Git error, run:**
```bash
git config --global user.email "your-email@example.com"
git config --global user.name "Your Name"
```
Replace `"your-email@example.com"` and `"Your Name"` with your actual **GitHub email and username**.

---

## **🔹 Additional Resources**
📖 **Official Docs:** [https://book.vlayer.xyz/getting-started/installation.html](https://book.vlayer.xyz/getting-started/installation.html)  
🐦 **Latest Updates:** [vlayer Twitter](https://x.com/vlayer_xyz/status/1853485774085222773)  

---

### **🎯 Now you're ready to deploy and run vlayer like a pro! 🚀**