pragma solidity ^0.8.0;
contract Casts2 {
    struct Value {
        uint index;
        uint value;
    }
    uint public result;
    uint[] public memory;
    mapping (uint => Value) memory public memoryIndex;
    Value public memoryLength;
    constructor(uint r) {
        memoryIndex[0].index = 0;
    }
}
        </code></pre>

        <pre><code data-language="javascript">

        </code></pre>

        <pre><code data-language="javascript">

        pragma solidity ^0.8.0;
    interface ICasts3 {
        function cast(bool) external;
        function cast2(uint) external;
        function cast3(uint) external;
        function equal(uint) external view;
        function notEqual(uint) external view;
        function min(uint) external view;
        function max(uint) external view;
    }
    contract Casts4 is ICasts3 {
        function notEqual(uint) external view { }
        function equal(uint) external view { }
        function cast3(uint) external view { }
        function cast2(uint) external view { }
        function cast(bool) external view { }
        function min(uint) external view { }
        function max(uint) external view { }
    }
        </code></pre>

        <pre><code data-language="javascript">

        pragma solidity ^0.8.0;
    interface ICasts5 {
        function stringToInt(string memory) external pure;
        function stringToUint(string memory) external pure;
    }
    contract Casts6 is ICasts5 {
        function stringToUint(string memory) external pure { }
        function stringToInt(string memory) external pure { }
        function cast(uint) external pure { }
    }
        </code></pre>
        <h2>
        <a href="#introduction" id="introduction">Introduction</a>
        <br><br>
        </h2>

        <p>The above programs use the language's built-in <code>mapping/event</code> functionality for storing and retrieving values from a contract.  In fact, the underlying mechanism for storing state in the Ethereum blockchain is the <a href="https://solidity.readthedocs.io/en/v0.5.9/units-and-global-variables.html" target="_blank">Storage Model</a> of Ethereum.  This document describes exactly how the standard Solidity compiler compiles contracts that interact with the Ethereum blockchain and how users interact with these contracts.</p>

        <p>The <a href="https://solidity.readthedocs.io/en/v0.5.9/abi-spec.html" target="_blank">ABI is the method contract uses to encode and decode functions called on contracts</a> (or the <a href="https:
