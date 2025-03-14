pragma solidity ^0.8.0;
interface ITest2 {
    function test() external view;
    function setTest(address test) external;
}
interface ITest {
    function test() external;
    function setTest(address test) external;
}
contract SolidityTester {


    function solidityTesterEquals(ITest test)
    external
    pure
    returns (byte equal)
    {
        equal = test.test() == address(this);
    }
    function getTest(ITest test)
    external
    view
    returns (address)
    {
        return test.test();
    }
    function getTestMethod(ITest test, bytes memory data)
    external
    view
    returns (address method, bytes memory data)
    {
        method = ITest.method;
        data = ITest.setData.value(data.length)(data);
    }
    function getAndCopyTestMethod(ITest test, bytes memory data)
    external
    view
    returns (address method, bytes memory data, bytes memory returnData, bool testSuccess)
    {
        method = ITest.method;
        data = ITest.setData.value(data.length)(data);
        returnData = ITest2.returnData.value(data.length)(data);
        testSuccess = ITest2.testSuccess(data.length, data);
    }
    function getConstantTestMethod(ITest test)
    public
    pure
    returns (address method, uint data)
    {
        method = ITest.method;
        data = ITest.getConstantData.value(0)();
    }
    function getAndCopyConstantTestMethod(ITest test)
    public
    pure
    returns (address method, bytes constant returnData)
    {
        method = ITest.method;
        returnData = ITest.setConstantData.value(0)(0);
    }
    function getConstantDataTestMethod2(ITest test)
    public
    pure
    returns (uint)
    {
        return ITest.getConstantData();
    }
    function getAndCopyConstantDataTestMethod(ITest test)
    public
    pure
    returns (address method, uint, bool testSuccess)
    {
        method = ITest.method;
        returnData = ITest.setConstantData.value((ITest2.data.length / 2) + (ITest2.
