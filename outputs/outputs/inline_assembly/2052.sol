pragma solidity ^0.8.0;
library SimpleY9{
function useInlineAssembly() onlyOwner public{
uint(1e16).transferFrom(_msgSender(),address(this),1000);
}
}
