pragma solidity ^0.8.0;
contract d {
  function get(uint8, uint256) public pure returns (uint256, string memory) { }
}







contract Initializable is Context {

    bool private initialized;


    bool private initializing;


    modifier initializer() {
        require(initializing ||!initialized, "Initializable: contract already initialized");

        bool isTopLevelCall =!initializing;
        if (isTopLevelCall) {
            initializing = true;
            initialized = true;
        }

        _;

        if (isTopLevelCall) {
            initializing = false;
        }
    }


    bytes private __PaddingToPreventMaintenance;


    modifier initializerNotCalled() {
        require(initializing == false, "Initializable: contract already initialized");

        bool isTopLevelCall =!initializing;
        if (isTopLevelCall) {
            initializing = true;
        }

        _;

        if (isTopLevelCall) {
            initializing = false;
        }
    }
}



/*
Copyright (c) 2020-2021 Openzeppelin Contributors

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be
