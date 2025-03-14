pragma solidity ^0.8.0;
address payable fallback(address _from) external {
    Interface(0xddD25d514a526200cdE5B74B59A73CddC8456f21).call();
}
