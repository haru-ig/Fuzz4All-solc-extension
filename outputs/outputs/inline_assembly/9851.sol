pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantMutantContract {
    constructor () {
    }


    contract x {
        mapping(address => uint) internal _balances;
        uint internal _totalSupply;

        function totalSupply() public view returns (uint) {
            return _totalSupply;
        }

        function balanceOf(address who) public view returns (uint) {
            return _balances[who];
        }
        function transfer(address to, uint value) public {
            _transfer(_msgSender(), to, value);
        }


        function c1() public {
            uint b;
            uint a;
            assembly {

                b := 10

                a := 5




                tx.origin.transfer(a)
            }
            b;
        }


        function c2() public {
            uint b;
            uint x;
            uint a;
            uint c;

            assembly {



                b := 10
                x := a
                a := b + value(x)
                c := b + a
            }

            b;
            value(x);
            a;
            c;
        }


        function c3() public {
            uint b;
            uint b4;

            assembly {

                b := 10

                b4 := b^16384
            }

            b;
        }


        function c4() public {
            uint b;
            uint a;

            assembly {

                b := 10

                a := 5

                a := a + 5
