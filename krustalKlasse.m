classdef krustalKlasse
    % Loesung des Krustal ALgorithmus
    
    properties
        anzahlVonEcken = 0;
        M;
    end
   
    methods
        function obj = krustalKlasse(n)
            if nargin == 1
                if isnumeric(n)
                    obj.anzahlVonEcken = n;
                    obj.M = zeros(n);
                else
                    error('Eingabe muss naturische Zahl sein!');
                end
            elseif nargin == 0
                n = 0;
              while (n == 0)
                  prompt = 'Geben Sie die Anzahl von Ecken ein: ';
                  title = 'Eingabe';
                  dims = [1 35];
                  definput = {'20'};
                  n = inputdlg(prompt, title, dims, definput);
                  n = str2num(n{1});
              end 
              obj.anzahlVonEcken = n;
              obj.M = zeros(n);
            else
                error('Fehler! Abbruch!');
            end
            
            obj.M = adjazentenMatrix(obj);
            
        end
        
        function M = adjazentenMatrix(obj)
            prompt = {'1<->2', '2<->3', '3<->1'};
            title = 'AdjanzentMatrix';
            dims = [1 5; 1 5; 1 5];
            opts.Resize = 'on';
            M = inputdlg(prompt, title, dims, {'1', '2', '2'}, opts);
        end
        
        
        
        function delete(obj)
         c = class(obj);
         disp(['ML object destructor called for class ',c]);
      end
    end
end

