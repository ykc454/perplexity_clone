import google.generativeai as genai
from config import Settings

settings = Settings()

class LLMService:
    def __init__(self):
        genai.configure(api_key = settings.GEMINI_API_KEY)
        self.model = genai.GenerativeModel("gemini-3.1-flash-lite")

    def generate_response(self, query: str, search_results: list[dict]):
        context_text = "\n\n".join(
            [
                f"Source {i+1} ({result['url']}):\n{result['content']}"
                for i, result in enumerate(search_results)
            ]
        )

        full_prompt = f"""
        Context from web search:
        {context_text}

        Query: {query}

        Please provide a comprehensive, detailed, well-cited, and accurate response using the above context.
        You need to think and reason deeply. Ensure it answers the user's query and do not use your internal
        knowledge unless it is absolutely necessary.
        """

        response = self.model.generate_content(full_prompt, stream = True)

        for chunk in response:
            yield chunk.text















































































