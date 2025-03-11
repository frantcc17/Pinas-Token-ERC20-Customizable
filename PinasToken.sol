//Licencia
//SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
//Contract
contract PinasToken is ERC20, Ownable,ERC20Burnable {
    uint256 public TokenPrice;
    uint256 public immutable maxSupply;

//Declare the function BEFORE the constructor
    function _updateTokenPrice() internal {
        TokenPrice = _calculatePrice();
    }
//Constructor
constructor () ERC20("Pinas Token", "PIN" ) Ownable(msg.sender){
uint256 initialOwner = 100 * 10 ** decimals(); // 100 tokens
uint256 initialContract = 1_000_000 * 10 ** decimals(); // 1M token
_updateTokenPrice();
 maxSupply = 2_000_000 * 10 ** decimals(); // Max: 2M tokens 

 //Validation: sums of initial tokens <= maxSupply
    require(
        initialOwner + initialContract <= maxSupply, // Sums of quantities
        "Mint inicial excede el maxSupply"
    );

    _mint(msg.sender, initialOwner); // Mints to the owner
    _mint(address(this), initialContract); // Mints to the contract
    _updateTokenPrice(); //Updates the price

}
    
//External Functions
// Mint Function
function mintTokens(address to, uint256 amount_) public onlyOwner {
    require(totalSupply() + amount_ <= maxSupply, "Exceeds max supply");
    _mint(to, amount_); // Mintea SOLO al destinatario
    _updateTokenPrice();
}
// Burn Function
function burnTokens ( uint256 amount_) public onlyOwner {
    _burn(address(this), amount_);
     
        _updateTokenPrice();
        }
// Buy function
function buyTokens() public payable {
         uint256 tokensToReceive = (msg.value * 10 ** decimals()) / TokenPrice;
        require(balanceOf(address(this)) >= tokensToReceive, "Not enough tokens available");
}

//Internal function

function _calculatePrice() internal view returns (uint256) {
    uint256 totalTokens = totalSupply() / 10 ** decimals(); // Tokens in whole units
    return 1e15 + (totalTokens * 1e12); // Base price.001 ETH, Increment: 0.000001 ETH per token
}
}
