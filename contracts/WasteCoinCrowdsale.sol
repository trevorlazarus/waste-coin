pragma solidity ^0.4.13;

import './WasteCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract WasteCoinCrowdsale is Crowdsale {

    function WasteCoinCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet)
     Crowdsale(_startTime, _endTime, _rate, _wallet){
     }
// create the token to be sold.
// override this method to have crowdsale of a specific MintableToken token.
function createTokenContract() internal returns (MintableToken){

    return new WasteCoin();
}

}