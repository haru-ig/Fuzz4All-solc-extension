pragma solidity ^0.8.0;
contract Contract11Mut5{
    fallback() external payable {
        num = 1;
        Fulfilled(sender, num);
    }
}

pragma solidity ^0.8.0;
contract Contract11Mut6 {
    fallback() external payable {
        Fulfilled(sender, num);
        revert();
    }
    uint num = 1;
}
