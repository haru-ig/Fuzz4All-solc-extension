pragma solidity ^0.8.0;
contract S {
    address payable payable payable public fallback;

    fallback() internal {
        address target = payable(address(address(sender)));
        fallback = target;
        emit CallBackTransaction();
    }






    event CallBackTransaction();
}
