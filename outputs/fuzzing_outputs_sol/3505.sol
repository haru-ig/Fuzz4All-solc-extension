pragma solidity ^0.8.0;
contract ContractWithFunctionFallback {
    uint public num;
    constructor() public {
        num = 0;
    }
    function addZeroTwo() public payable returns (bool success) {
        num += 2;
        return true;
    }
    function addFour() public returns (bool success) {
        num += 4;
        return true;
    }
    fallback() external payable {}
}



pragma solidity ^0.8.9;






/*
    📜  OpenZeppelin Contracts v4.4.1 (test/Counter.sol)
    📜
    📜  Provides information about the deployed contract.
    📜
    📜   ███╗   ██╗       ███████╗ █████╗ ███╗   ██╗ █████╗ ██╗     ███████╗ ██╗███╗   ██╗ ██████╗ ███████╗
    📜   ██║   ██║      ██╔════╝██╔══██╗████╗  ██║██╔══██╗██║     ██╔════╝ ██║████╗  ██║██╔════╝ ██╔════╝
    📜   ██║   ██║      █████╗  ██████╔╝██╔██╗ ██║██║  ██║██║     █████╗  ██║██╔██╗ ██║██║     █████╗
    📜   ██║   ██║      ██╔══╝  ██╔══██╗██║╚██╗██║██║  ██║██║     ██╔══╝  ██║██║╚██╗██║██║     ██╔══╝
    📜   ╚██████╔╝      ███████╗██║  ██║██║ ╚████║╚██████╗███████╗███████╗╚██████╔╝██║ ╚████║██║     ███████╗
    📜    ╚═════╝       ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚══════╝
    📜
    OpenZeppelin Contracts is licensed under the Apache License, Version 2.0 (the "License").
    You may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http:
    Unless required by applicable
