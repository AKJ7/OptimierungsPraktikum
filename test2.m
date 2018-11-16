adjazentenMatrix = [0 1; 0 1];

a = 1;
while (a <= 2)
   b = 1;
   while (b <= 2)
       if (adjazentenMatrix(a, b)~=0) && (adjazentenMatrix(a, b) ~= 1)
           error('AdjazentenMatrizen enthalten nur Eintraege aus {0, 1}. Fehler an (%d, %d)', a, b);
       end
       b = b + 1;
   end
   a = a + 1;
end