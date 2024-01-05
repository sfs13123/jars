FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mPWwMg63LjHr8CR7QruG2_0AH9o5SSGYuyNWqka0LalQFfbD9eUHAAcRy_0fUt3Yl3i2PIGYFOb7h8YLorC6yLfg1Yr53Nl__KSclZ0P331JgZMLlG972gWWGDGUV0_xRoBXl7iWCeloVxgZxopZhIUxUpu6gtu4X-0i7JYP4v-n8ocJJy-mjgS6EavwhICCYTJdb428NWD34d_Wqa3hVDg4ZX-JgrWNPzdR46hsqENk?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
