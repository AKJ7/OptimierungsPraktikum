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
                  definput = {'4'};
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
            kantenListe = {};
            boxGroesseListe = [];
            a = 1;
            while (a <= obj.anzahlVonEcken)
                b = 1;
                while (b <= obj.anzahlVonEcken)
                    if (b > a)
                        kantenListe{end+1} = string(a)+'<->'+string(b);
                    end
                    b = b + 1;
                end
                a = a + 1;
            end
            c = 0;
            while (c < length(kantenListe))
                boxGroesseListe = [boxGroesseListe; [1 5]];
                c = c + 1;
            end
            
            title = 'Gewichte';
            opts.Resize = 'on';
            M = inputdlg({''}, title, boxGroesseListe);
        end
        
        
        
        function delete(obj)
         c = class(obj);
         disp(['ML object destructor called for class ',c]);
      end
    end
end

