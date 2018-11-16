classdef Krustal
    % Klasse zuer Handlung des Krustals Algorithmus
    
    properties
        anzahlVonEcken = 0;
        adjazentenMatrix = [];
        gewichtsVektor = [];
        output = [];
    end
    
    methods
        function obj = Krustal(n)
            
            if nargin == 1
                if isnumeric(n) && n~=0
                    obj.anzahlVonEcken = n;
                else
                    error('Die Anzahl von Ecken muss doch naturliche Zahl sein!');
                end
            elseif nargin == 0
                obj.anzahlVonEcken = anzahlVonEckenCheck(obj);
            else
                error('Fehler! Versuchen Sie erneut!');
            end
         
           obj.adjazentenMatrix = adjazentenMatrixCheck(obj);
           obj.gewichtsVektor = gewichtsVektorCheck(obj);
           obj.output = algorithmus(obj);
           
           
        end
        
        function anzahlVonEcken = anzahlVonEckenCheck(obj)
            anzahlVonEcken = input('Anzahl von Ecken: ');
            if anzahlVonEcken == 0 || ~isnumeric(anzahlVonEcken)
                error('Die Anzahl muss zur den naturlichen Zahlen gehoeren!');
            end
        end
        
        function adjazentenMatrix = adjazentenMatrixCheck(obj)
           adjazentenMatrix = input('Geben Sie die adjazentenMatrix ein: ');
           if size(adjazentenMatrix) ~= obj.anzahlVonEcken
                error('Die groesse der eingegebenen Matrix stimmt nicht mit der Anzahl der Ecken nicht ueberein.\nErwartet: %dx%d-Matrix', obj.anzahlVonEcken, obj.anzahlVonEcken);
           end
           if ~issymmetric(adjazentenMatrix)
               error('Humm! Sind Adjazentenmatrizen fuer ungerichtete Graphen nicht symmetrisch?');
           end
           a = 1;
           while (a <= obj.anzahlVonEcken)
               b = 1;
               while (b <= obj.anzahlVonEcken)
                   if (adjazentenMatrix(a, b)~=0 && adjazentenMatrix(a, b) ~= 1)
                       error('AdjazentenMatrizen enthalten nur Eintraege aus {0, 1}. Fehler an (%d, %d)', a, b);
                   end
                   b = b + 1;
               end
               a = a + 1;
           end
           a = 1;
           while (a <= obj.anzahlVonEcken)
               if (adjazentenMatrix(a, a) ~= 0)
                   error('Kein Kreis erlaubt an der Stelle (%d, %d)', a, a);
               end
               a = a + 1;
           end
          
        end
        
        function gewichtsVektor = gewichtsVektorCheck(obj)
           gewichtsVektor = input('GewichtsVektor eingeben: ');
           erwarteteLaenge = 0.5 * obj.anzahlVonEcken*(obj.anzahlVonEcken + 1) - obj.anzahlVonEcken;
           gewichtsVektorsGroesse = size(gewichtsVektor);
           if (gewichtsVektorsGroesse(1, 1) ~= erwarteteLaenge || gewichtsVektorsGroesse(1, 2) ~= 1)
              error('Fehler mit dem GewichtsVektor! Erwartet: %dx1-Vektor', gewichtsVektorsGroesse(1, 1));
           end
        end
        
        function resultat = algorithmus(obj)
            
            
            
            
            resultat = 2;
        end
        
        function delete(obj)
        end
    end
end

