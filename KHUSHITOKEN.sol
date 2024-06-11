// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract KHUSHITOKEN {

    // Public variables to store token details
    string public name = "KHUSHITOKEN";       // Token name
    string public symbol = "KTK";         // Token abbreviation
    uint256 public totalSupply;           // Total supply of tokens

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address to, uint256 value) public {
        // Increase total supply by the minted amount
        totalSupply += value;
        // Increase the balance of the recipient address
        balances[to] += value;
    }

    // Burn function to destroy tokens
    function burn(address from, uint256 value) public {
        // Check if the sender has enough balance to burn
        require(balances[from] >= value, "Insufficient balance to burn");
        // Decrease total supply by the burned amount
        totalSupply -= value;
        // Decrease the balance of the sender address
        balances[from] -= value;
    }
}
