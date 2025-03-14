pragma solidity ^0.8.0;
import "./ReturnsExample_SemanticsInconsistency_SemanticsToAncient_1_1_4.sol";

contract ReturnExample_semanticsInconsistency_test_5 {

    address payable private _sender;
    address payable private immutable _receiver;
    uint private _value;
    bool private constant _noPayable = true;


    function _test_main() public {

        uint expected = 10;
        ReturnsExample_SemanticsInconsistency_SemanticsToAncient_1_1_4 myContract = new ReturnsExample_SemanticsInconsistency_SemanticsToAncient_1_1_4();
        _receiver.call{value: expected}(abi.encodePacked(myContract));


        uint expectedTwo = 20;
        ReturnsExample_SemanticsInconsistency_SemanticsToAncient_2_7_0 myContractTwo = new ReturnsExample_SemanticsInconsistency_SemanticsToAncient_2_7_0();
        (bool successTwo, ) = _receiver.call{value: (expectedTwo - expected)}(abi.encodePacked(myContractTwo, _noPayable));
        require(successTwo);


        ReturnsExample_SemanticsInconsistency_SemanticsToAncient_3_7_2 myContractThree = new ReturnsExample_SemanticsInconsistency_SemanticsToAncient_3_7_2();
        uint expectedThree = 400001;
        uint value = 400001;
        (bool successThree, ) = _receiver.call{value: expectedThree}(abi.encodePacked(myContractThree.set, value));
        require(successThree);
        _value = ReturnsExample_SemanticsInconsistency_SemanticsToAncient_3_7_2.get.call();
        require(_value == expectedThree);
