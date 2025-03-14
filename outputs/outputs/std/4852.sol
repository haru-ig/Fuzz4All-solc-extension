pragma solidity ^0.8.0;


contract MintableToken {

    uint public totalSupply;
    uint public balances[2];
    uint public totalEarnings;


    event Transfer(address indexed from, address indexed to, uint256 value);


    event Burn(address indexed burner, uint256 value);


    mapping (address => uint256) public balanceOf;


    function totalSupply() public view returns(uint256) {
      return totalSupply;
    }


    function balanceOf(address account) public view returns(uint256) {
      return balanceOf[account];
    }





    function transfer(address to, uint256 tokenId) public {
        require (balances[msg.sender] >= tokenId && tokenId > 0);
        balances[msg.sender] -= tokenId;
        balances[to] += tokenId;
        Transfer(msg.sender, to, tokenId);
    }





    function swap(address from, address to, uint256 tokenId) public {
        uint256 counter = tokenId;
        if (counter > balances[from] && counter >= totalSupply - balances[from]) {
            counter = balances[from];
        }

        balances[from] -= counter;
        balances[to] += counter;
        Transfer(from, to, counter);
    }


    function burn(uint256 tokenId) public {
        require (balances[msg.sender] >= tokenId, "No balance for burn");
        balances[msg.sender] -= tokenId;
        totalSupply -= tokenId;
        Burn(msg.sender, tokenId);
    }


    function mint(address to, uint256 tokenAmount) public {
        totalEarnings = totalEarnings + tokenAmount;
        balances[to] += tokenAmount;
        totalSupply += tokenAmount;

        Transfer(address(0
