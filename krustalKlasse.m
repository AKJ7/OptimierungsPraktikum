classdef krustalKlasse
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        anzahlVonEcken;
    end
   
    methods
        function obj = krustalKlasse(n)
            if nargin == 1
                if isnumeric(n)
                    obj.anzahlVonEcken = n;
                else
                    error('Die Anzahl von Ecken sind doch naturliche Zahlen!');
                end
            elseif nargin == 0
                obj.anzahlVonEcken = input('Anzahl von Ecken: ');
            else
                error('Nur eine Zahl ist fuer den Algorithmus vorausgesetzt!')
            end
        end
    end
end

