### **README.md**

# Donation Smart Contract  

## **Overview**  
This project is a **Donation Smart Contract** built with Solidity. It ensures secure, scalable, and transparent handling of donations while integrating Chainlink oracles to verify a minimum USD donation value. The contract has been deployed and tested on the **Arbitrum Sepolia Testnet**.



## **Features**  
- **Donation Functionality:**  
  Allows users to donate ETH with a minimum donation value of **$50 USD**, ensuring accessibility while maintaining standards.  
- **Price Feed Integration:**  
  Utilizes **Chainlink oracles** to fetch real-time ETH/USD price data for conversion and validation.  
- **Owner-Only Withdrawal:**  
  The contract restricts fund withdrawal to the owner, enhancing security.  
- **Transparency:**  
  - Logs all donations via the `DonationReceived` event.  
  - Logs withdrawals via the `FundsWithdrawn` event.  
- **Security Measures:**  
  - Implements a modifier to restrict owner-only access to sensitive functions.  
  - Protects against insufficient contract balance or donation amounts.  

---

## **Contract Addresses**  

- **Price Converter Contract:** `0x24a753f9220F83dA6E965872f063a39956616769`  
- **Donation Contract:** `0x317fEb46E8bA35701A41c9E351Eff92d2D3FBe2F`  



## **How It Works**  

### **1. Contract Structure:**  
The project includes the following files:  
- **Donation.sol**: The primary donation contract.  
- **PriceConverter.sol**: A library for ETH/USD conversion.  
- **AggregatorV3Interface**: Interface for Chainlink price feeds.

### **2. Key Functions:**  
- **`fund()`**:  
  - Accepts ETH donations from users.  
  - Ensures the donation meets the minimum USD value using the `PriceConverter` library.  
  - Tracks donations and logs the transaction.  

- **`withdraw()`**:  
  - Transfers all contract funds to the owner.  
  - Restricted by the `onlyOwner` modifier.  

### **3. Price Conversion:**  
The `PriceConverter` library fetches the current ETH price using the Chainlink Price Feed address **`0x694AA1769357215DE4FAC081bf1f309aDC325306`** for the Arbitrum Sepolia Testnet.  


## **Deployment Details**  
The contract has been deployed and tested on the **Sepolia Testnet**.  

- **Price Feed Address:** `0x694AA1769357215DE4FAC081bf1f309aDC325306`  
- **Minimum Donation:** $50 USD  


## **Expected Outcomes**  

By completing this project, I can:  
1. Build a **secure and scalable donation contract**.  
2. **Integrate Chainlink oracles** to ensure accurate USD donation validation.  
3. **Deploy and test** your smart contract on the Sepolia Testnet.  
4. Demonstrate your ability to handle **security vulnerabilities and edge cases**.  


## **License**  
This project is licensed under the **MIT License**.  
