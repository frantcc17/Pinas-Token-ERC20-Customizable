# 🍍 PinasToken: ERC20 Token with Dynamic Pricing  

[![License: LGPL-3.0](https://img.shields.io/badge/License-LGPL--3.0-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)  

**PinasToken** is an ERC20 smart contract with dynamic pricing based on total token supply. Designed for transparency and flexibility, it enables:  
- 🪙 Owner-controlled minting and burning of tokens.  
- 💸 ETH purchases with auto-calculated token prices.  
- 📈 Dynamic pricing that scales with total supply.  

Key guarantees:  
✅ Real-time token price updates.  
✅ Fixed max supply to prevent inflation.  
✅ Full owner control over token issuance.  

---

## ✨ Features  

### 🪙 Controlled Minting & Burning  
- Only the owner can mint new tokens.  
- Tokens can be burned to reduce supply.  
- Auto-updated pricing after each transaction.  

### 💸 ETH Token Purchases  
- Users buy tokens by sending ETH to the contract.  
- Dynamic price calculation based on supply.  
- Auto-validation of contract token balance.  

### 📊 Transparency  
- Events for critical actions (`TokensMinted`, `TokensBurned`, `TokensPurchased`).  
- Public view functions for price and supply checks.  

### ⚙️ Modular Design  
- Easily extendable for ERC20 payments or custom pricing logic.  

---

## 📖 Contract Summary  

### Core Functions  
| 🔧 Function       | 📋 Description                                      |  
|-------------------|----------------------------------------------------|  
| `mintTokens()`    | Owner mints tokens to a specific address.          |  
| `burnTokens()`    | Owner burns tokens from a specific address.        |  
| `buyTokens()`     | Users purchase tokens by sending ETH.              |  

### View Functions  
| 🔍 Function       | 📋 Description                          |  
|-------------------|----------------------------------------|  
| `TokenPrice()`    | Returns current token price in ETH.    |  
| `totalSupply()`   | Returns total token supply.            |  

---

## ⚙️ Prerequisites  
1. **🛠️ Tools**:  
   - [🖥️ Hardhat](https://hardhat.org/) / [Remix IDE](https://remix.ethereum.org)  
   - [MetaMask](https://metamask.io/) (live network testing)  
2. **🌐 Environment**:  
   - Solidity Compiler: `^0.8.24`  
   - Test Networks: Sepolia/Goerli  

---

## 🚀 Deployment & Testing  
1. **Deploy** via Remix/Hardhat on test networks.  
2. Test core functions:  
   - Mint/burn tokens (owner-only).  
   - Buy tokens with ETH (dynamic pricing).  
   - Verify price updates post-transactions.  

**[Full Code](https://github.com/your-repo/pinastoken)** | **License: LGPL-3.0**  

