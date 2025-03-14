pragma solidity ^0.8.0;
contract C23 {
        function c() public {
                revert();
        }
}
contract Mutator
{
        function c() public {revert();}
}

pragma solidity ^0.8.0;
contract C24 {
        function c() public {revert(); }
        function d() public {do {revert();} while(true);}
}
contract Mutator
{
        function c() public {revert(); }
        function d() public {do {revert();} while(true);}
}
contract C25 {
        function c() public { revert(); }
        function d() public {do { revert(); } while (true);}
}
