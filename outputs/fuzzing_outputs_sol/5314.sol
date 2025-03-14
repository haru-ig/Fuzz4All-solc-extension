pragma solidity ^0.8.0;
contract Mutated
{




        Fallback6 public f;
        constructor() public { f = new F(); }

        function a(uint64 x) public {
                require(msg.value == x,'send 3');
                f.a(msg.sender);
        }

        function aNotPayable(uint64 x) public payable {
                require(x == 1,'send 2');


                f.a(msg.sender);
        }

        function b(address x) public {
                f.b(x);
        }










        contract F is Fallback6
        { }







        contract G is mutated(I)
        {
                function c(uint64 x) public {
                        f.c(x);
                }
        }

        function h(I x) public
        {
            function_call_replaced(x, abi.encodeWithSignature(
                    'test(uint256, uint256)'
                ));
        }

        function test(uint256 a, uint256 b) public
        {

                f.aNotPayable(b + 1);
                f.b(address(0));

                f.d(2);
                I(x.f);
        }
}
pragma solidity ^0.8.0;
interface Mutated2
{
        function f(address x) external;
}

*/
