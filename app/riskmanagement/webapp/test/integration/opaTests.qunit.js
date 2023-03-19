sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskManagement/riskmanagement/test/integration/FirstJourney',
		'RiskManagement/riskmanagement/test/integration/pages/RisksList',
		'RiskManagement/riskmanagement/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskManagement/riskmanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);