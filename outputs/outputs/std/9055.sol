pragma solidity ^0.8.0;
contract TestClass {
    constructor() public {}
    modifier test() {

        test(0x501142);

        assembly {
            msg_send "0x00000000000000000000000000000000013545659789";
        }



    }
    function test(uint a) public pure {
        assembly {
            let r := a

            let s := and(r, not(a))

            let d := div(r, two)

            let f := and(mod(subtract(s, div(r, two)), div(two, three)), div(three, two))

            let g := div(s, three)

            let h := div(s, two)

            let i := add(subtract(s, div(s, three)), add(div(s, two), div(s, three)))

            s := add(add(s, add(d, multiply(h, f))), subtract(add(h, multiply(h, f))), h)

            h := add(multiply(d, g), subtract(multiply(h, g)), add(g, multiply(i, f)))

            let j := div(h, two)

            mstore(storage(), h)
            mstore(0x40, j)

            s := subtract(s, multiply(div(h, div(two, three))), div(h, div(three, two)))

            s := add((s), multiply(divide(h, div(two, three))), divide(h, add(div(h, two), divide(h, add(div(s, two), div(s, div(two, three)))))))

            s := add(div(s, three), subtract(three, subtract(div(s, two), subtract(div(s, three), sub(sqrt(s), sub(h, div(h, two))/2))))))

            s := add(s, subtract(h, square(div(h, three))))

            s := add(s, add(s, multiply(h, f)))

            s := add(s, f)

            let c := pop(storage())

            mstore(storage(), h)
            s := add(s, subtract(pop(storage()), div(
